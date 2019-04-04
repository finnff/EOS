#include "OP2.hh"

int main()
{ std::string input;
  // ToDo: Vervang onderstaande regel: Laad prompt uit bestand
std::string prompt = "lidlsh: ";


while(true)
  { std::cout << prompt;                   // Print het prompt
    std::getline(std::cin, input);         // Lees een regel
    if (input == "new_file") new_file();   // Kies de functie
    else if (input == "ls") list();        //   op basis van
    else if (input == "src") src();        //   de invoer
    else if (input == "find") find();
    else if (input == "python") python();
    else if (input == "exit") return 0;
    else if (input == "quit") return 0;
    else if (input == "error") return 1;

    if (std::cin.eof()) return 0; } }      // EOF is een exit

void new_file(){ // ToDo: Implementeer volgens specificatie.
    system("touch new_file");//Zou string moeten splitten na spatie voor naam aangemaakt bestand.
}

void list(){ // ToDo: Implementeer volgens specificatie.
    system("ls");
}

void find(){ // ToDo: Implementeer volgens specificatie.
    system("find");//Zou weer input moeten splitten voor argument;
}

void python(){ // ToDo: Implementeer volgens specificatie.
    system("python");//?
}

void src() // Voorbeeld: Gebruikt SYS_open en SYS_read om de source van de shell (shell.cc) te printen.
{ int fd = syscall(SYS_open, "shell.cc", O_RDONLY, 0755); // Gebruik de SYS_open call om een bestand te openen.
  char byte[1];                                           // 0755 zorgt dat het bestand de juiste rechten krijgt (leesbaar is).
  while(syscall(SYS_read, fd, byte, 1))                   // Blijf SYS_read herhalen tot het bestand geheel gelezen is,
    std::cout << byte; }       