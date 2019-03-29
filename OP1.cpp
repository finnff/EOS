// Tijdens het vorige practicum hebben we uitvoerig gebruik gemaakt van command line utilities op Linux. 
// Deze programma’s volgen allemaal de Unix filosofie: doe één taak, maar doe die goed. De reden dat dit zo krachtig is, is dat de kleine programma’s 
// gecombineerd kunnen worden om ingewikkelde problemen te automatiseren. Dit noemen we compositie, en kunnen we realiseren met behulp van standaard-invoer 
// en standaard-uitvoer. Maak een simpele utility die invoer leest vanuit std::cin, hier iets mee doet, en het resultaat uitvoert naar std::cout. Geef de utility 
// (teminste) een argument dat de werking van de utility beïnvloed. Het maakt niet uit wat er met de input gebeurt, zolang deze (1) herkenbaar en afhankelijk van het
// argument verandert, en (2) de utility voor de hele invoer werkt (dus tot aan de EOF). Compile je utility, en laat zien dat deze te combineren is met andere utilities
// doormiddel van pipes en IO redirection. Eventuele extra output wordt teruggegeven met behulp van std::cerr of std::clog (whichever meer van toepassing is).



#include <iostream>
#include <string>

std::string translate(std::string input, std::string variabele)
{ std::string result = ""; 
    



  return result; }

int main(int argc, char *argv[])
{ std::string s;

  if(argc != 2)
  { std::cerr << "Deze functie heeft exact 1 argument nodig";
    return -1; }

  while(true)
  { std::cin >> s;
    if(std::cin.eof()){ return 0; }
    std::cout << translate(argv[1], s) << std::endl; } }
