.SILENT: clean compile install uninstall

all: clean compile

clean:
	echo "|> Clean\n";
ifneq ("$(wildcard ./qte)","")
	rm qte;
endif

compile:
	echo "|> Compile\n";
	gcc src/main.c -o qte;

install: clean compile
	echo "|> Install\n";
	sudo cp qte /usr/bin;

uninstall:
	echo "|> Uninstall\n";
ifneq ("$(wildcard /usr/bin/qte)","")
	sudo rm /usr/bin/qte;
endif