# 🥋 Karate API Testing Framework

## Overview

This project uses the **[Karate Framework](https://github.com/karatelabs/karate)** for API test automation. Karate is an open-source tool that combines API test-automation, mocks, performance testing, and UI automation into a single unified framework.

Karate enables easy-to-write, readable, and powerful tests using a domain-specific language (DSL) that requires no Java knowledge.

---

## 🚀 Features

- Simple DSL for writing tests (no Java code required)
- Native support for JSON and XML
- Supports data-driven testing
- Supports HTTP, SOAP, GraphQL, WebSocket, and gRPC
- Parallel execution for fast test runs
- Built-in HTML reports
- Can be integrated into CI/CD pipelines


---

<pre markdown="1">
🛠️ Project Structure

karate-framework/
│
├── src/
│   └── test/
│       └── java/
│           ├── examples/       # Sample feature files
│           ├── runners/        # Test runner classes
│           └── utils/          # Reusable utilities (e.g., hooks, config)
│
├── karate-config.js            # Global Karate config file (runs before every test)
├── pom.xml                     # Maven project configuration
└── README.md                   # You're here!

</pre>


## 🚀 Getting Started

### 🔧 Prerequisites

- Java 8 or higher
- Maven 3.x
- IDE (e.g., IntelliJ IDEA or Eclipse)


📥 Installation

Clone this repo:
- git clone https://github.com/kothasantosh/karate_framework.git
- cd karate-framework <br>
Install dependencies: <br>
mvn clean install

🧪 Running Tests

Run all tests using Maven:
mvn test

Run a specific feature file:
mvn test -Dkarate.options="classpath:examples/my-feature.feature"

📁 Feature Files

All test cases are written in Gherkin syntax inside .feature files. A typical test might look like:
 
  ## Example Karate Scenario: Get all users

This is a simple API test scenario to get all users and verify the response.

```gherkin

Feature: Sample API Test

Scenario: Get all users
  Given url 'https://reqres.in/api/users'                           # Set the endpoint URL
  When method GET                                                   # Perform a GET request
  Then status 200                                                   # Expect HTTP status 200 OK
  And match response.data[0].email == 'george.bluth@reqres.in'      # Validate the first user's email
```

 🛠 Configuration

Karate supports global configuration via karate-config.js. This is used to define environment-specific base URLs, headers, tokens, etc.

function fn() {
  var env = karate.env || 'dev';
  var config = {
    env: env,
    baseUrl: 'https://reqres.in/api'
  };
  return config;
}

📊 Reporting

After execution, Karate generates the following reports:

HTML report: target/karate-reports/karate-summary.html

JUnit XML: target/surefire-reports

You can also integrate with Cucumber Reports or Allure for enhanced reporting.

🏷️ Tagging

Use tags to organize and run subsets of tests:

@smoke
Scenario: Basic smoke test
  ...

✅ Best Practices

Keep tests data-driven using Examples or JSON files.

Reuse steps by creating reusable feature files (callable like functions).

Store common headers, tokens, or base URLs in karate-config.js.

Use karate.callSingle() for one-time setup.

📚 Resources

[Karate Official Docs](https://karatelabs.io/)

Please visit the [Karate GitHub repo](https://github.com/karatelabs/karate) for more info.

Karate on Maven Central

🤝 Contributing

Pull requests are welcome! Please follow the code style and add tests for new features.



