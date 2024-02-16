Project Structure

The project follows the principles of Clean Architecture to promote separation of concerns and maintainability:

lib/
 presentation/: Contains UI components and screens.
 domain/: Holds business logic and use cases.
 data/: Includes data sources and repositories.
 core/: Provides common utilities and interfaces.
 Clean Architecture Design Pattern

The app follows the Clean Architecture pattern, which consists of three layers:

Domain Layer:
Represents the core business logic and entities.
Contains use cases that define application behavior.
Data Layer:
Implements data sources and repositories.
Interacts with external APIs and local databases.
Presentation Layer:
Contains UI components and screens.
Utilizes BLoC for state management, ensuring a separation from business logic.
Clean Architecture ensures a scalable, testable, and maintainable codebase.

Code Style

The code adheres to the Dart Effective Dart Style Guide, promoting consistency and readability. Key aspects include:

Clear variable and function naming.
Proper indentation and formatting.
Effective use of comments for documentation.
Image Loader Library

The app uses the flag package for loading country flags. This lightweight package simplifies the process of displaying flags in the UI.

Database

Local storage is handled using the Hive   package. Hive is chosen for its simplicity and compatibility with Flutter, providing efficient data storage and retrieval capabilities.

Features

List of Supported Currencies:
Displays a list of supported currencies along with their country flags.
Data is stored locally in a database after the first API request for future usage.
Historical Data:
Provides historical data for two chosen currencies for the last 7 days.
Currency Converter:
Allows users to select two currencies and convert an amount between them.
Dependencies

http: For making HTTP requests.

Hive: A local database package.
path: A package for working with file paths.
flag: A lightweight package for displaying country flags.
intl: Internationalization and localization support.


Feel free to customize and extend the project based on your specific requirements. If you encounter any issues or have suggestions, please submit them in the Issues section.


