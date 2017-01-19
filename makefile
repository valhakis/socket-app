all:  build mysql-app

mysql-app: 
	$(MAKE) -C apps/mysql-app

build:
	$(MAKE) -C app
	$(MAKE) -C apps/mysql-app

run:
	$(MAKE) -C app run

clean:
	$(MAKE) -C app clean


