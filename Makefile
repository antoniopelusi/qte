.SILENT: clean compile

all: clean compile

clean:
	echo "|> Clean\n"
ifneq ("$(wildcard ./qte)","")
	rm qte
endif

compile:
	echo "|> Compile\n"
	gcc src/main.c -o qte

install: clean compile
	sudo cp qte /usr/bin;

uninstall: clean compile
	sudo rm /usr/bin/qte;