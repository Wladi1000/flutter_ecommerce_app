# flutter_ecommerce_app

Guaply e-commerce.

Project structure divided by scope
```
.                  
├── features                                 # All features or Modules 
│   ├─ authentication                        # Auth's MVC       
│   │  ├── auth_model.dart   
│   │  ├── auth_controller.dart  
│   │  └── auth_page.dart                      
│   ├─ home                                  # Home's MVC       
│      ├── home_model.dart   
│      ├── home_controller.dart  
│      └── home_page.dart      -                   
├── core                                     # Tools and utilities
├── app_widget.dart                          # Main Widget containing MaterialApp 
└── main.dart                                # runApp 
```
What we did in this structure was to continue using MVC, but this time in scope. This means that each feature has its own MVC, and this simple approach solves many scalability and maintainability issues. We call this approach "Smart Structure". But two things were still Global and clashed with the structure itself, so we created Modular to solve this impasse.

In short: Modular is a solution to modularize the route and dependency injection system, making each scope have its own routes and injections independent of any other factor in the structure. We create objects to group the Routes and Injections and call them Modules.