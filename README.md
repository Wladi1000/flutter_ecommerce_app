# flutter_ecommerce_app

Hola

Guaply e-commerce.

Project structure divided by scope

What we did in this structure was to continue using MVC, but this time in scope. This means that each feature has its own MVC, and this simple approach solves many scalability and maintainability issues. We call this approach "Smart Structure". But two things were still Global and clashed with the structure itself, so we created Modular to solve this impasse.

In short: Modular is a solution to modularize the route and dependency injection system, making each scope have its own routes and injections independent of any other factor in the structure. We create objects to group the Routes and Injections and call them Modules.

# Common

## Widgets

### TPromoSlider

The `TPromoSlider` widget is a promotional slider that displays a series of images in a carousel format. It uses the `CarouselSlider` package to create the carousel and `flutter_hooks` to manage the state of the current carousel index.

#### Usage

To use the `TPromoSlider` widget, you need to provide a list of image URLs that will be displayed in the carousel.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/features/shop/screens/widgets/home_promo_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TPromoSlider(
        banners: [
          'https://example.com/banner1.jpg',
          'https://example.com/banner2.jpg',
          'https://example.com/banner3.jpg',
        ],
      ),
    );
  }
}
```

### TAppBar

The `TAppBar` widget is a custom app bar that provides additional customization options such as a custom title, leading icon, and actions. It implements the `PreferredSizeWidget` interface to specify its height.

#### Usage

To use the `TAppBar` widget, you need to provide the `appBarHeight` and optionally provide a title, leading icon, actions, and a callback for the leading icon.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/appbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        appBarHeight: 56.0,
        title: Text('Home'),
        showBackArrow: true,
        leadingIcon: Icons.menu,
        leadingOnPressed: () {
          // Handle leading icon press
        },
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search icon press
            },
          ),
        ],
      ),
      body: Center(child: Text('Home Page')),
    );
  }
}
```

### TCustomCurvedEdges

The `TCustomCurvedEdges` class is a custom clipper that creates a curved edge effect for widgets. It is used to clip the edges of a widget to create a custom shape.

#### Usage

To use the `TCustomCurvedEdges` class, you need to wrap your widget with a `ClipPath` and provide an instance of `TCustomCurvedEdges` as the clipper.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: Container(
        color: Colors.blue,
        height: 200,
        width: double.infinity,
      ),
    );
  }
}
```

### TCurvedEdgeWidget

The `TCurvedEdgeWidget` is a widget that uses the `TCustomCurvedEdges` clipper to create a curved edge effect for its child widget.

#### Usage

To use the `TCurvedEdgeWidget`, you need to provide a child widget that will be clipped with the curved edges.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: Colors.blue,
        height: 200,
        width: double.infinity,
      ),
    );
  }
}
```

### TSearchContainer

The `TSearchContainer` is a widget that provides a customizable search bar with an icon and text. It can be used to create a search input field with optional shadow background and border.

#### Usage

To use the `TSearchContainer`, you need to provide the text to be displayed and optionally provide an icon, shadow background, border, and a callback for the tap event.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TSearchContainer(
          text: 'Search...',
          onTap: () {
            // Handle search container tap
          },
        ),
      ),
    );
  }
}
```

### TRoundedContainer

The `TRoundedContainer` is a widget that provides a customizable container with rounded corners. It can be used to create a container with optional width, height, padding, margin, border, and background color.

#### Usage

To use the `TRoundedContainer`, you need to provide the desired properties such as width, height, padding, margin, border, and background color.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      width: 100,
      height: 100,
      backgroundColor: Colors.blue,
      child: Center(child: Text('Rounded Container')),
    );
  }
}
```

### TPrimaryHeaderContainer

The `TPrimaryHeaderContainer` is a widget that provides a primary header container with a curved edge and circular decorations. It can be used to create a header section with a custom child widget.

#### Usage

To use the `TPrimaryHeaderContainer`, you need to provide a child widget that will be displayed inside the header container.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TPrimaryHeaderContainer(
      child: Center(child: Text('Primary Header')),
    );
  }
}
```

### TCircularContainer

The `TCircularContainer` is a widget that provides a customizable circular container. It can be used to create a circular container with optional width, height, padding, margin, and background color.

#### Usage

To use the `TCircularContainer`, you need to provide the desired properties such as width, height, padding, margin, and background color.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TCircularContainer(
      width: 100,
      height: 100,
      backgroundColor: Colors.blue,
      child: Center(child: Text('Circular Container')),
    );
  }
}
```

### TCircularIcon

The `TCircularIcon` is a widget that provides a customizable circular icon button. It can be used to create an icon button with optional width, height, size, color, background color, and a callback for the tap event.

#### Usage

To use the `TCircularIcon`, you need to provide the desired properties such as icon, width, height, size, color, background color, and a callback for the tap event.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/icons/circular_icon.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TCircularIcon(
      icon: Icons.favorite,
      width: 50,
      height: 50,
      size: 24,
      color: Colors.red,
      backgroundColor: Colors.white,
      onPressed: () {
        // Handle icon button tap
      },
    );
  }
}
```

### TProductTitleText

The `TProductTitleText` is a widget that displays the title of a product. It provides options for small size, maximum lines, and text alignment.

#### Usage

To use the `TProductTitleText`, you need to provide the title and optionally provide the small size, maximum lines, and text alignment.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_title_text.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TProductTitleText(
      title: 'Product Title',
      smallSize: true,
      maxLines: 2,
      textAlign: TextAlign.left,
    );
  }
}
```

### TProductPriceText

The `TProductPriceText` is a widget that displays the price of a product. It provides options for currency sign, large size, maximum lines, and line-through decoration.

#### Usage

To use the `TProductPriceText`, you need to provide the price and optionally provide the currency sign, large size, maximum lines, and line-through decoration.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/texts/product_price_text.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TProductPriceText(
      price: '35.5',
      currencySign: '\$',
      isLarge: true,
      maxLines: 1,
      lineThrough: false,
    );
  }
}
```

### TProductCardVertical

The `TProductCardVertical` is a widget that displays a vertical product card with an image, title, price, and additional details. It provides options for customization such as background color, padding, and shadow.

#### Usage

To use the `TProductCardVertical`, you need to provide the desired properties such as image URL, title, price, and additional details.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TProductCardVertical();
  }
}
```

### TProductCardHorizontal

The `TProductCardHorizontal` is a widget that displays a horizontal product card. It is currently a placeholder and can be customized as needed.

#### Usage

To use the `TProductCardHorizontal`, you need to provide the desired properties for the horizontal product card.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/product_cards/product_card_horizontal.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TProductCardHorizontal();
  }
}
```

### TCartCounterIcon

The `TCartCounterIcon` is a widget that displays a shopping cart icon with a counter. It provides options for icon color and a callback for the tap event.

#### Usage

To use the `TCartCounterIcon`, you need to provide the icon color and a callback for the tap event.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TCartCounterIcon(
      iconColor: Colors.black,
      onPressed: () {
        // Handle cart icon tap
      },
    );
  }
}
```

### TSocialButtons

The `TSocialButtons` is a widget that displays social media buttons for Facebook and Google. It provides options for customization such as icon size and border.

#### Usage

To use the `TSocialButtons`, you need to provide the desired properties for the social media buttons.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/login_signup/social_buttons.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TSocialButtons();
  }
}
```

### TFormDivider

The `TFormDivider` is a widget that displays a divider with text in the middle. It provides options for customization such as divider text and color.

#### Usage

To use the `TFormDivider`, you need to provide the divider text and optionally provide the desired properties for the divider.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/login_signup/form_divider.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TFormDivider(
      dividerText: 'OR',
    );
  }
}
```

### TGridLayout

The `TGridLayout` is a widget that displays a grid layout with a specified number of items. It provides options for customization such as item count, item builder, and main axis extent.

#### Usage

To use the `TGridLayout`, you need to provide the item count and item builder, and optionally provide the main axis extent.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/layouts/grid_layout.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TGridLayout(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.blue,
          child: Center(child: Text('Item $index')),
        );
      },
    );
  }
}
```

### TRoundedImage

The `TRoundedImage` is a widget that displays an image with rounded corners. It provides options for customization such as width, height, padding, border, background color, and image fit.

#### Usage

To use the `TRoundedImage`, you need to provide the image URL and optionally provide the desired properties such as width, height, padding, border, background color, and image fit.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_image.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TRoundedImage(
      imageUrl: 'https://example.com/image.jpg',
      width: 100,
      height: 100,
      padding: EdgeInsets.all(8),
      border: Border.all(color: Colors.black),
      backgroundColor: Colors.white,
      fit: BoxFit.cover,
    );
  }
}
```


### TRoundedImage

The `TRoundedImage` is a widget that displays an image with rounded corners. It provides options for customization such as width, height, padding, border, background color, and image fit.

#### Usage

To use the `TRoundedImage`, you need to provide the image URL and optionally provide the desired properties such as width, height, padding, border, background color, and image fit.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/common/widgets/images/rounded_image.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TRoundedImage(
      imageUrl: 'https://example.com/image.jpg',
      width: 100,
      height: 100,
      padding: EdgeInsets.all(8),
      border: Border.all(color: Colors.black),
      backgroundColor: Colors.white,
      fit: BoxFit.cover,
    );
  }
}
```
## Utils

### TLoggerHelper

The `TLoggerHelper` class provides utility methods for logging messages at different levels (debug, info, warning, error).

#### Usage

To use the `TLoggerHelper` class, you can call its static methods directly.

```dart
import 'package:flutter_ecommerce_app/utils/logging/logger.dart';

void main() {
  TLoggerHelper.debug('This is a debug message');
  TLoggerHelper.info('This is an info message');
  TLoggerHelper.warning('This is a warning message');
  TLoggerHelper.error('This is an error message');
}
```

### TLocalStorage

The `TLocalStorage` class provides utility methods for interacting with local storage.

#### Usage

To use the `TLocalStorage` class, you can call its static methods directly.

```dart
import 'package:flutter_ecommerce_app/utils/local_storage/storage_utility.dart';

// Example usage
void main() {
  // Save data
  // TLocalStorage.saveData('key', 'value');

  // Read data
  // String value = TLocalStorage.readData('key');

  // Remove data
  // TLocalStorage.removeData('key');

  // Clear all data
  // TLocalStorage.clearAllData();
}
```

### THttpHelper

The `THttpHelper` class provides utility methods for making HTTP requests (GET, POST, PUT, DELETE).

#### Usage

To use the `THttpHelper` class, you can call its static methods directly.

```dart
import 'package:flutter_ecommerce_app/utils/http/http_client.dart';

void main() async {
  // Example GET request
  Map<String, dynamic> response = await THttpHelper.get('endpoint');
  print(response);

  // Example POST request
  Map<String, dynamic> postData = {'key': 'value'};
  response = await THttpHelper.post('endpoint', postData);
  print(response);

  // Example PUT request
  Map<String, dynamic> putData = {'key': 'new_value'};
  response = await THttpHelper.put('endpoint', putData);
  print(response);

  // Example DELETE request
  response = await THttpHelper.delete('endpoint');
  print(response);
}
```

### TPricingCalculator

The `TPricingCalculator` class provides utility methods for calculating prices, taxes, and shipping costs.

#### Usage

To use the `TPricingCalculator` class, you can call its static methods directly.

```dart
import 'package:flutter_ecommerce_app/utils/helpers/pricing_calculator.dart';

void main() {
  double productPrice = 100.0;
  String location = 'NY';

  double totalPrice = TPricingCalculator.calculatePrice(productPrice, location);
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');

  String shippingCost = TPricingCalculator.calculateShippingCost(location);
  print('Shipping Cost: \$${shippingCost}');

  String taxAmount = TPricingCalculator.calculateTax(productPrice, location);
  print('Tax Amount: \$${taxAmount}');
}
```

### THelperFunctions

The `THelperFunctions` class provides various utility methods for common tasks such as showing snack bars, alerts, navigating to screens, truncating text, checking dark mode, getting screen size, formatting dates, and removing duplicates.

#### Usage

To use the `THelperFunctions` class, you can call its static methods directly.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/helpers/helper_functions.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Helper Functions Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            THelperFunctions.showSnackBar(context, 'This is a snack bar message');
          },
          child: Text('Show Snack Bar'),
        ),
      ),
    );
  }
}
```

## Theme

### TAppTheme

The `TAppTheme` class provides the light and dark themes for the app.

#### Usage

To use the `TAppTheme` class, you can access its static properties directly.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: HomePage(),
    );
  }
}
```

### TTExtheme

The `TTExtheme` class provides the text themes for the light and dark themes.

#### Usage

To use the `TTExtheme` class, you can access its static properties directly.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/text_theme.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, World!',
      style: TTExtheme.lightTextTheme.headlineLarge,
    );
  }
}
```

### TTextFormFieldTheme

The `TTextFormFieldTheme` class provides the input decoration themes for the light and dark themes.

#### Usage

To use the `TTextFormFieldTheme` class, you can access its static properties directly.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/text_field_theme.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Label',
        hintText: 'Hint',
      ).applyDefaults(TTextFormFieldTheme.lightTextFormFieldTheme),
    );
  }
}
```

### TOutlinedButtonTheme

The `TOutlinedButtonTheme` class provides the outlined button themes for the light and dark themes.

#### Usage

To use the `TOutlinedButtonTheme` class, you can access its static properties directly.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/outlined_button_theme.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text('Outlined Button'),
      style: TOutlinedButtonTheme.lightOutlinedButtonTheme.style,
    );
  }
}
```

### TElevatedButtonTheme

The `TElevatedButtonTheme` class provides the elevated button themes for the light and dark themes.

#### Usage

To use the `TElevatedButtonTheme` class, you can access its static properties directly.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/elevated_button_theme.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Elevated Button'),
      style: TElevatedButtonTheme.lightElevatedButtonTheme.style,
    );
  }
}
```

### TChipTheme

The `TChipTheme` class provides the chip themes for the light and dark themes.

#### Usage

To use the `TChipTheme` class, you can access its static properties directly.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/chip_theme.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text('Chip'),
      backgroundColor: TChipTheme.lightChipTheme.selectedColor,
    );
  }
}
```

### TCheckboxTheme

The `TCheckboxTheme` class provides the checkbox themes for the light and dark themes.

#### Usage

To use the `TCheckboxTheme` class, you can access its static properties directly.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/checkbox_theme.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: true,
      onChanged: (bool? value) {},
      shape: TCheckboxTheme.lightCheckboxTheme.shape,
    );
  }
}
```

### TBottomSheetTheme

The `TBottomSheetTheme` class provides the bottom sheet themes for the light and dark themes.

#### Usage

To use the `TBottomSheetTheme` class, you can access its static properties directly.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: TBottomSheetTheme.lightBottomSheetTheme.backgroundColor,
          child: Center(child: Text('Bottom Sheet')),
        );
      },
    );
  }
}
```

### TAppBarTheme

The `TAppBarTheme` class provides the app bar themes for the light and dark themes.

#### Usage

To use the `TAppBarTheme` class, you can access its static properties directly.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/appbar_theme.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('App Bar'),
      backgroundColor: TAppBarTheme.lightAppBarTheme.backgroundColor,
    );
  }
}
```

## Validators

### TValidator

The `TValidator` class provides utility methods for validating email, password, and phone number.

#### Usage

To use the `TValidator` class, you can call its static methods directly.

```dart
import 'package:flutter_ecommerce_app/utils/validators/validation.dart';

void main() {
  String? emailError = TValidator.validateEmail('example@example.com');
  String? passwordError = TValidator.validatePassword('Password123!');
  String? phoneError = TValidator.validatePhoneNumber('1234567890');
}
```
