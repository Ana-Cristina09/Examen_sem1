# Enunt
Realizarea unei baze de date pentru administrarea unei biblioteci cu scopul de a stoca si administra carti, articole, edituri si autorii acestora, impreuna cu descrierea fizica si cuvantu cheie si locatia prin care se poate identifica o carte si un articol.

Entitati:
  - Carte:
          - ID_carte
          - Titlu
          - An
          - Cota
          - ID_editura
          - ID_descriere fizica
          - ID_locatie
   - Autor: 
          - ID_autor 
          - Nume 
          - Pseudonim
          - Observatii
          - ID_carte
          
   - Articol:
          - ID_articol
          - Titlu
          - Publicat in
          - ID_cuvant cheie
          - ID_autor
          
   - Editura:
          - ID_editura
          - Nume
          - Director general
          - Adresa web
          
   - Descriere fizica:
          - ID_descriere fizica
          - Numar de pagini
          - Dimensiuni
          - Foto
         
   - Locatie:
          - ID_locatie integer
          - Denumire
          - Adresa
          
   - Cuvant cheie:
          - ID_cuvant cheie
          - Cuvant
          - ID_carte
          
![Model conceptual](https://github.com/Lopatita/Biblioteca/blob/main/Model%20%20conceptual.png)

Steps:
- git clone (descarcare repository)
- git status
- pentru a importa baza de date in pgadmin:
  - open pgadmin
  - enter your admin password
  - open your databases tab
  - create a database
  - right click on your database
  - click import and  select the file "DATABASE.sql"
- pentru a modifica repository (git add)
- git commit -m "your message goes here"
- git push -f 
  
