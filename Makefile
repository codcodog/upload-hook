.PHONY: run
run:
	@source venv/bin/activate && python pre-receive

.PHONY: dep
dep:
	@source venv/bin/activate && pip freeze > requirements.txt

.PHONY: load_dep
load_dep:
	@source venv/bin/activate && pip install -r requirements.txt

.PHONY: check
check:
	@source venv/bin/activate && yapf -dr -e venv . || true

.PHONY: fix
fix:
	@source venv/bin/activate && yapf -ir -e venv .

.PHONY: tags
tags:
	@ctags --languages=python --exclude=venv -R .
