VENV = venv
PYTHON = python3
RMDIR = rm -rf
FIND = find
VENV_BIN = $(VENV)/bin
VENV_PYTHON = $(VENV_BIN)/python3
VENV_PIP = $(VENV_BIN)/pip

run: activate
	$(VENV_PYTHON) ai-bot

activate: requirements.txt
	$(PYTHON) -m venv $(VENV)
	$(VENV_PIP) install -r requirements.txt

clean:
	$(RMDIR) $(VENV)
	$(FIND) . -depth -type d -name __pycache__ -exec $(RMDIR) {} \;
