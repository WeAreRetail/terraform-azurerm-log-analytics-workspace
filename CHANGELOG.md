# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2026-08-26

### Changed

- Require `azurerm >= 5.0.0`.
- Map `internet_ingestion_enabled` and `internet_query_enabled` to the azurerm v5 `internet_ingestion_access_type` and `internet_query_access_type` arguments while preserving the existing boolean module inputs.

## [1.0.0] - 2024-08-01

### Added

- Initial Release to open source
