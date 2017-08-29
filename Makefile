test:
	. ./venv/bin/activate
	pip install ansible-inventory-grapher
	pip install ansible==2.1.0
	ansible-inventory-grapher --version
	ansible --version
	ansible-inventory-grapher -i inventories/localhost.ini 'all' > localhost-2.1.dot
	dot -Tpng localhost-2.1.dot > localhost-2.1.png
	pip install ansible==2.2
	ansible-inventory-grapher --version
	ansible --version
	ansible-inventory-grapher -i inventories/localhost.ini 'all' > localhost-2.2.dot
	dot -Tpng localhost-2.2.dot > localhost-2.2.png
	pip install ansible==2.3
	ansible-inventory-grapher --version
	ansible --version
	ansible-inventory-grapher -i inventories/localhost.ini 'all' > localhost-2.3.dot
	dot -Tpng localhost-2.3.dot > localhost-2.3.png

venv:
	virtualenv venv
