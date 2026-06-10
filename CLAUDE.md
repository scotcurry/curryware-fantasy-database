# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a **PostgreSQL DDL repository** for a fantasy football database. It is managed via DataGrip and contains only SQL schema definition files — no application code, no migrations framework. Changes are applied manually against one of two target databases.

## Target Databases

Two PostgreSQL instances are configured in DataGrip (`.idea/dataSources.xml`):

- **ubuntu-postgres** — production: `postgres.curryware.org:5432/currywarefantasy`
- **podman-postgres** — local dev: `localhost:5432/fantasy_football`

Connect directly with `psql`:
```bash
psql -h postgres.curryware.org -U <user> -d currywarefantasy
psql -h localhost -U <user> -d fantasy_football
```

Apply a single DDL file:
```bash
psql -h localhost -U <user> -d fantasy_football -f <filename>.sql
```

## Schema Architecture

All tables live in the `public` schema. The domain model has these layers:

**League & Config**
- `all_league_information` — top-level league metadata (keyed by `league_key`)
- `league_stat_description` — per-league scoring stat definitions (stat IDs, names, position types)

**Teams & Players**
- `team_information` — fantasy team rosters with manager info and draft grades; no explicit FK to `all_league_information`
- `player_info` — NFL player catalog (injury status, position, headshot, bye week)

**Stats**
- `player_stats` — raw per-player per-week stat rows (`player_key`, `game_key`, `week_key`, `stat_id`, `stat_value`)
- `player_weekly_stats` — alternate weekly stat table using `player_game_id` composite key instead of integer keys
- `scoring_by_total` — aggregated weekly fantasy point totals per player (`player_id` + `statistic_week` PK)

**Transactions**
- `transaction_info` — waiver/trade/drop event headers (`transaction_key` PK)
- `transaction_player` — per-player legs of a transaction (`transaction_key` + `player_key` composite PK)
- `latest_transaction_id` — bookmark table storing the most recent processed transaction ID per league, used for incremental fetching

## Key Conventions

- `init.sql` uses `\set` / `\if` feature flags (psql meta-commands) to selectively run table creation blocks — it is a template/prototype and **not** the canonical schema definition.
- The canonical `CREATE TABLE IF NOT EXISTS` definitions are in the individual `create_*.sql` files, which are the source of truth.
- `create_all_league_information.sql` and the individual `create_*.sql` files may have differing column definitions from early versions in `init.sql` — prefer the standalone files.
- There is no migration tool; DDL is applied ad hoc. When adding a column to an existing table, write an `ALTER TABLE` statement rather than recreating the table.
