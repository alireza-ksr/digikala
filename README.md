Prerequisites

To run the tests, you'll need a Python virtual environment and some additional dependencies.

1. **Python 3.x**: Ensure that Python 3.x is installed on your system.
2. **Robot Framework**: Install Robot Framework by running:
   ```bash
   pip install robotframework
   ```
3. **Selenium Library**: Install this library for browser interaction:
   ```bash
   pip install robotframework-seleniumlibrary
   ```
4. **ChromeDriver**: Download the appropriate **ChromeDriver** for your Chrome browser version and place it in the PATH.

Installation

1. Create a Python virtual environment:
   ```bash
   python -m venv .venv
   ```

2. Install the dependencies:
   ```bash
   pip install -r requirements.txt
   ```

Running the Tests

### 1. Running Tests with Robot Framework:

Once the dependencies are installed, you can run the tests with the following command:

```bash
robot tests/shopping_test.robot
```

This will run the tests in the `shopping_test.robot` file. After execution, the results will be stored in the `output` directory.

### 2. Viewing the Reports:

After running the tests, you can view the results in the following formats:

- **HTML Report**: `report.html`
- **XML Report**: `output.xml`
- **Log**: `log.html`

