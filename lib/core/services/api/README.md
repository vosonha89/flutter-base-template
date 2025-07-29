# API Services

This directory contains implementations for external API communication:

- **ApiClient**: Base HTTP client configuration with interceptors
- **Authentication**: Token management, refresh logic, and auth headers
- **Error Handling**: Standardized API error parsing and conversion
- **Service Interfaces**: Abstract service definitions
- **Service Implementations**: Concrete implementations of API services

These services handle all REST/GraphQL API calls to backend services, including serialization/deserialization, error handling, and retry logic.
