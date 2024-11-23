# 🚀 Go Microservice Boilerplate Generator

Welcome to the **Go Microservice Boilerplate Generator**! 🎉 This simple script helps you quickly set up the foundational structure of a Go microservice project. It automates the creation of essential directories, files, and Go modules to help you get started faster! 🏃‍♂️💨

## ✨ Features

- **Instant Project Setup**: Automatically creates a Go microservice project with predefined folder structures.
- **Easy Initialization**: Initializes Go modules (`go mod init`) and creates essential configuration files like `main.go`, `config.yaml`, etc.
- **Business Object Creation**: Lets you define business objects (e.g., `user`, `order`, etc.) and generates relevant files in the `api`, `service`, `model`, and `repository` directories.
- **Ready for Development**: Sets up the basic framework for database migrations, middleware, and tests so you can dive straight into building your application.

## 🏗 Project Structure

Here’s the folder structure that will be generated once you run the script:

```
<project_name>/
│
├── cmd/
│   └── <project_name>/
│       └── main.go  # Entry point for your service
│
├── configs/
│   └── config.yaml  # Service configuration file
│
├── internal/
│   ├── api/
│   │   └── v1/
│   │       └── <business_objects>_go_files
│   ├── service/
│   │   └── <business_objects>_service.go
│   ├── repository/
│   │   └── <business_objects>_repo.go
│   ├── model/
│   │   └── <business_objects>_model.go
│   ├── middleware/
│   ├── util/
│   └── config/
│       └── config.go
│       └── env.go
│
├── pkg/
│   └── database/
│       └── db.go  # Database logic
│       └── migrations/
│
├── test/
│   └── <test_files> 
│
├── docs/
│   └── swagger.yaml  # API documentation (Swagger)
└── go.mod  # Go module file
```

## 🛠 Requirements

- **Go 1.18+**: This script assumes you have Go installed on your system.
- **Bash**: Designed for Unix-based systems (Linux/macOS). For Windows, use Git Bash or any Bash-compatible terminal.

## 🚀 How to Use

### 1. Clone the repository or download the script:
```bash
git clone https://github.com/yourusername/go-microservice-boilerplate.git
cd go-microservice-boilerplate
```

### 2. Make the script executable (if needed):
```bash
chmod +x generate_boilerplate.sh
```

### 3. Run the script:
```bash
./generate_boilerplate.sh
```

### 4. Fill in the prompts:

- **Project name**: Choose a name for your project (e.g., `my-microservice`).
- **Business objects**: Provide a comma-separated list of business objects (e.g., `user,order,product`).

Example interaction:
```
Enter project name: my-microservice
Enter business objects: user,order,product
```

The script will automatically generate the project structure, create necessary files, and initialize your Go modules. 🎉

## ⚙️ Customization

- **Extend as Needed**: The generated files serve as a starting point. You can easily add your own logic, routes, middleware, and more.
- **Configuration**: You can tweak the generated `config.yaml` and `.go` files according to your needs.
- **Add More Objects**: You can always add more business objects later and the script will generate the corresponding files for you.

## 📂 Directory Breakdown

Here’s what each directory is for:

- **cmd**: Contains the entry point of your Go application (`main.go`).
- **configs**: Configuration files, like `config.yaml`, to handle service-level settings.
- **internal**: The core of your microservice:
  - **api/v1**: API handlers for version 1 of the service.
  - **model**: Data models representing your business objects.
  - **service**: Business logic (e.g., how to process user data).
  - **repository**: Interaction with the database (e.g., CRUD operations).
  - **middleware**: Custom middlewares like authentication, logging, etc.
  - **util**: Utility functions that can be reused throughout the service.
  - **config**: Configuration handling (e.g., loading environment variables).
- **pkg/database**: Database logic including connections and migrations.
- **test**: Unit and integration tests for your microservice.
- **docs**: API documentation, including Swagger definitions (`swagger.yaml`).

## 💡 Tips

- You can run the script multiple times with different project names or business objects to quickly prototype different microservices.
- Make sure to update the `config.yaml` file with environment-specific configurations.

## 🔧 **Customize. Innovate. Scale.**  
Start coding, building, and deploying your services with ease. Don't forget to keep learning and experimenting as you expand your project.

If you need any help or run into issues, feel free to reach out! 💬 Let's make awesome things together. 🚀✨