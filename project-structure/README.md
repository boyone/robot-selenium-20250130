# Project Structure

## Simple Project

- Root Folder

  - requirements.txt - Python dependencies or
  - pyproject.toml - Python dependencies
  - Readme.md - Project description
  - .gitignore - Lists files and folders to be ignored by git

- Test Suites: are located in the `tests/` folder.
- Resources: Reusable keywords are stored in `.resource` files in the `resources` folder. Also `Python keywords in .py` files can be stored there.
- Libraries: Custom Python Keyword libraries can be stored in a separate libraries/ folder, if needed.

  ```txt
  project
  ├── tests
      ├── test-suite1.robot
      ├── test-suite2.robot
      ├── ..
  ├── resources
      ├── common.resource
      ├── variables.resource
      ├── variables.py
      ├── variables.yaml
      ├── variables.json
  ├── libraries
      ├── custom_library.py
  ├── .gitignore
  ├── README.md
  ├── requirements.txt
  ```

### The tests/test-suite1.robot file looks like this

```robot
*** Settings ***
Resource  resources/common.resource
Resource  resources/some_other.resource
Library   resources/custom_library.py
Variables resources/variables.py
...
```

### Tests can be run with the following command (assuming you are in the project root folder project):

```sh
robot --pythonpath . tests
```

---

## More Complex Project

Test Suites are organized in subfolders in the tests/ folder.

```txt
project
├── tests
│   ├── authentication
│   │   ├── login.robot
│   │   ├── ...
│   ├── master-data
│   │   ├── customers.robot
│   │   ├── products.robot
│   │   ├── ...
│   ├── order
│   │   ├── order_creation.robot
│   │   ├── order_processing.robot
│   │   ├── ...
├── resources
│   ├── common.resource
│   ├── search.resource
│   ├── master-data
│   │   ├── customers.resource
│   │   ├── products.resource
│   │   ├── ...
│   ├── ...
├── data
│   ├── master-data
│   │   ├── customers.py
│   │   ├── products.py
│   │   ├── ...
│   ├── order
│   │   ├── order_creation.yaml
│   │   ├── order_processing.yaml
│   │   ├── ...
├── .gitlab-ci.yml
├── .gitignore
├── README.md
├── requirements.txt
```

## The tests/authentication/login.robot file looks like this

```robot
*** Settings ***
Resource  resources/common.resource
Resource  resources/some_other.resource
Library   resources/custom_library.py
Variables resources/variables.py
...
```

## Tests can be run with the following command (assuming you are in the project root folder project):

```sh
robot --pythonpath . tests
```

---

## Run from IDE

To run the tests directly from your IDE, you also need to configure the `--pythonpath` argument in your IDE.
In VS Code with RobotCode extension, you can add the following line to your `settings.json` file.
You can also find the setting under `File > Preferences > Settings` by searching for `robotcode.robot.pythonPath`.

```json
"robotcode.robot.pythonPath": [
    "./"
    ],
```