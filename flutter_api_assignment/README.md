# ShopSphere - Flutter API Integration with CRUD & Local Cache

**Course:** Mobile Application Development with Flutter  
**Assignment Title:** Build a Flutter App Using a Public REST API  
**Project Name:** ShopSphere

ShopSphere is a premium catalog application built with Flutter using clean architecture principles. It integrates the public **DummyJSON Products API** to fetch product listings, handles online/offline networking transparently, persists records locally in a **Hive** database, enables full local CRUD operations, features smooth pagination, dark/light themes, and search/sort/filtering controls.

---

## 🚀 Features

### Core Features
- **Splash Screen:** Premium splash screen containing a fading and scaling app logo.
- **Home Screen Listing:** Responsive product grid displaying products with titles, subtitles, ratings, categories, and price tags.
- **Search:** Instant product search with custom **debounce logic** (500ms delay) to limit API hits.
- **Filtering:** Horizontal tag scrollbar to filter products by category.
- **Sorting:** Bottom-sheet options to sort products by Title (A-Z), Price (Low to High / High to Low), and Rating.
- **Detail Screen:** Displays a clean image slider carousel, verified product ratings, category tags, stock count, and full description.
- **CRUD Operations:**
  - **Create:** Add a custom product with form validation (Title, Brand, Category, Price, Stock, Image URL, Description).
  - **Read:** Display paginated catalog from DummyJSON or Hive cache.
  - **Update:** Edit any existing product details directly.
  - **Delete:** Delete any product with a confirmation alert dialog.
- **Local Caching:** Full persistence of fetched products, custom-added products, and favorites in local storage.
- **Pagination:** Infinite scrolling pagination using `ScrollController` offsets (`limit` and `skip`).
- **Error Handling:** Gracefully handles network loss, empty states, and server failures.
- **Pull to Refresh:** Swipe down to clear cache and reload fresh catalog from the server.
- **Responsive UI:** Adapts grid layouts dynamically (2 columns on mobile, 3 on tablet, 4 on desktop/wide screens).

### ⭐ Bonus Marks Features
- **Dark Mode:** System-wide dark/light theme toggling synced to state management and cached locally.
- **Favorite items:** Toggle products as favorites, with a local filter view to see only your favorite products.
- **Offline mode:** Detects network status instantly using `connectivity_plus` and overlays a custom offline banner, falling back to local cache storage for reading and performing CRUD.
- **Clean Architecture & Repository Pattern:** Absolute separation of concerns between remote/local sources, repositories, and UI.

---

## 🛠️ Packages Used

- **`provider`**: State management and dependency injection.
- **`dio`**: Fast HTTP client for consuming REST APIs.
- **`hive` & `hive_flutter`**: High-performance key-value local database for offline storage.
- **`cached_network_image`**: Automatic networking caching for product thumbnails.
- **`connectivity_plus`**: Real-time internet connection state listener.
- **`shimmer`**: Skeleton loader placeholders.
- **`uuid`**: Generates unique string IDs for locally added products.

---

## 📂 Architecture Directory Structure

The project follows a **Clean Architecture / Repository Pattern** layout:

```text
lib/
├── core/
│   ├── constants/       # API endpoints, assets, defaults
│   ├── theme/           # Premium Light/Dark design tokens
│   ├── network/         # Internet connectivity validation
│   └── errors/          # Custom Exceptions and Failures
├── data/
│   ├── model/           # Product model & Hive adapters
│   ├── datasource/
│   │   ├── remote_data_source.dart  # API integrations
│   │   └── local_data_source.dart   # Hive storage CRUD operations
│   └── repository/
│       └── product_repository.dart  # Data synchronization interface
├── presentation/
│   ├── screens/
│   │   ├── splash_screen.dart       # App entrance
│   │   ├── home_screen.dart         # Grid catalog, search, filter
│   │   ├── detail_screen.dart       # Dynamic info and CRUD triggers
│   │   └── crud_screen.dart         # Form validations for Add/Edit
│   ├── widgets/
│   │   ├── product_card.dart        # Grid card layout
│   │   └── error_view.dart          # Connection loss & empty state pages
│   └── providers/
│       ├── theme_provider.dart      # Dark theme toggler
│       └── product_provider.dart    # State controller (paginates, searches)
└── main.dart                        # Initializer and Dependency Injector
```

---

## 💻 How to Run the Project

### Prerequisites
Make sure you have Flutter installed. If you don't have it, run:
```bash
# Verify flutter installation
flutter --version
```

### Steps to Run

1. **Clone the Repository:**
   ```bash
   git clone <repository_url>
   cd flutter_api_assignment
   ```

2. **Install Package Dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run Build Runner:**
   To generate the Hive database adapters, execute:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the Application:**
   ```bash
   # Run on any connected device (mobile, emulator, desktop, or web)
   flutter run
   ```

5. **Run Tests:**
   ```bash
   flutter test
   ```
