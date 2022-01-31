################ LES REQUETTES ET LES JOINTURES###################

cinema_db=# select distinct date_de_la_seance
from Seance S , Film F , Role R
where R.numero_film = F .numero_film
and S .numero_film= F .numero_film
and R.numero_acteur = 80 ;
 date_de_la_seance 
-------------------
 2022-02-24
(1 ligne)


cinema_db=# select distinct  nom_du_role
cinema_db-# from Role
cinema_db-# where numero_acteur = 42
cinema_db-# order by nom_du_role;
     nom_du_role      
----------------------
 Safety Technician IV
(1 ligne)


cinema_db=# select date_de_la_seance,horaire
cinema_db-# from Seance S
cinema_db-# where S .numero_film= 78
cinema_db-# order by 1 ;
 date_de_la_seance |       horaire       
-------------------+---------------------
 2022-02-22        | 1900-03-17 22:37:00
(1 ligne)

Requete:
select *
from Realisateur inner join Film
on Realisateur .numero_realisateur = Film .numero_realisateur;



 numero_realisateur | nom_realisateur | prenom_realisateur |        nation_realisateur        | numero_film |                                                titre_film                                                 | date_de_sortie |  duree   |                      genre                      | numero_realisateur 
--------------------+-----------------+--------------------+----------------------------------+-------------+-----------------------------------------------------------------------------------------------------------+----------------+----------+-------------------------------------------------+--------------------
                  2 | Léa             | Brumfield          | Argentina                        |           2 | Deadly Companions, The                                                                                    | 2021/06/19     | 6:07 PM  | Western                                         |                  2
                  3 | Naëlle          | MacFaell           | Philippines                      |           3 | 976-EVIL                                                                                                  | 2022/01/15     | 9:41 AM  | Horror                                          |                  3
                  4 | Frédérique      | Okell              | France                           |           4 | My Own Man                                                                                                | 2021/08/07     | 5:59 PM  | (no genres listed)                              |                  4
                  5 | Marlène         | Dunphie            | Czech Republic                   |           5 | War Made Easy: How Presidents & Pundits Keep Spinning Us to Death                                         | 2021/04/22     | 11:02 AM | Documentary|War                                 |                  5
                  6 | Andréanne       | Bernt              | United Kingdom                   |           6 | I'm with Lucy                                                                                             | 2021/11/04     | 3:33 PM  | Comedy|Romance                                  |                  6
                  7 | Örjan           | Lanyon             | Peru                             |           7 | Beachhead                                                                                                 | 2021/04/05     | 3:28 AM  | Drama|War                                       |                  7
                  8 | Gisèle          | Bauldrey           | Philippines                      |           8 | Cameraman's Revenge, The (Mest kinematograficheskogo operatora)                                           | 2021/08/18     | 12:04 PM | Animation|Comedy                                |                  8
                  9 | Gaétane         | Junifer            | China                            |           9 | Faces in the Crowd                                                                                        | 2021/05/09     | 11:54 AM | Crime|Drama|Mystery                             |                  9
                 10 | Maëline         | Girardi            | Norway                           |          10 | Muppets Most Wanted                                                                                       | 2021/02/18     | 1:18 AM  | Adventure|Comedy|Crime                          |                 10
                 11 | Liè             | Soares             | Thailand                         |          11 | Eden Log                                :


Requete: 
select *
from Realisateur inner join Film
using (numero_realisateur ) ;




 numero_realisateur | nom_realisateur | prenom_realisateur |        nation_realisateur        | numero_film |                                                titre_film                                                 | date_de_sortie |  duree   |                      genre                      
--------------------+-----------------+--------------------+----------------------------------+-------------+-----------------------------------------------------------------------------------------------------------+----------------+----------+-------------------------------------------------
                  2 | Léa             | Brumfield          | Argentina                        |           2 | Deadly Companions, The                                                                                    | 2021/06/19     | 6:07 PM  | Western
                  3 | Naëlle          | MacFaell           | Philippines                      |           3 | 976-EVIL                                                                                                  | 2022/01/15     | 9:41 AM  | Horror
                  4 | Frédérique      | Okell              | France                           |           4 | My Own Man                                                                                                | 2021/08/07     | 5:59 PM  | (no genres listed)
                  5 | Marlène         | Dunphie            | Czech Republic                   |           5 | War Made Easy: How Presidents & Pundits Keep Spinning Us to Death                                         | 2021/04/22     | 11:02 AM | Documentary|War
                  6 | Andréanne       | Bernt              | United Kingdom                   |           6 | I'm with Lucy                                                                                             | 2021/11/04     | 3:33 PM  | Comedy|Romance
                  7 | Örjan           | Lanyon             | Peru                             |           7 | Beachhead                                                                                                 | 2021/04/05     | 3:28 AM  | Drama|War
                  8 | Gisèle          | Bauldrey           | Philippines                      |           8 | Cameraman's Revenge, The (Mest kinematograficheskogo operatora)                                           | 2021/08/18     | 12:04 PM | Animation|Comedy
                  9 | Gaétane         | Junifer            | China                            |           9 | Faces in the Crowd                                                                                        | 2021/05/09     | 11:54 AM | Crime|Drama|Mystery
                 10 | Maëline         | Girardi            | Norway                           |          10 | Muppets Most Wanted                                                                                       | 2021/02/18     | 1:18 AM  | Adventure|Comedy|Crime
                 11 | Liè             | Soares             | Thailand                         |          11 | Eden Log                                                                                                  | 2021/08/03     | 9:15 PM  | Horror|Mystery|Sci-Fi|Thriller
                 12 | Laurène         | Goulding           | Kenya                            |          12 | South Shaolin Master, The (Nan quan wang)                                                                 | 2022/01/04     | 11:17 PM | Action|Adventure|Drama
                 13 | Séverine        | Treuge             | Indonesia                        |          13 | Russell Peters: Outsourced                                                                                | 2021/07/15     | 4:32 AM  | Comedy|Documentary
                 14 | Ruò             | Litton             | Argentina                        |          14 | Girl 6                                                                                                    | 2021/11/13     | 7:37 PM  | Comedy|Drama
                 15 | Lyséa           | Zamudio            | Ecuador                          |          15 | Choose Me                                                                                                 | 2021/05/30     | 10:44 AM | Comedy|Romance
                 16 | Bérengère       | Harston            | China                            |          16 | Rundown, The                                                                                              | 2021/04/05     | 3:31 PM  | Action|Adventure|Comedy
:

Requete :
select *
from Realisateur, Film
where Realisateur .numero_realisateur = Film .numero_realisateur;



 numero_realisateur | nom_realisateur | prenom_realisateur |        nation_realisateur        | numero_film |                                                titre_film                                                 | date_de_sortie |  duree   |                      genre                      | numero_realisateur 
--------------------+-----------------+--------------------+----------------------------------+-------------+-----------------------------------------------------------------------------------------------------------+----------------+----------+-------------------------------------------------+--------------------
                  2 | Léa             | Brumfield          | Argentina                        |           2 | Deadly Companions, The                                                                                    | 2021/06/19     | 6:07 PM  | Western                                         |                  2
                  3 | Naëlle          | MacFaell           | Philippines                      |           3 | 976-EVIL                                                                                                  | 2022/01/15     | 9:41 AM  | Horror                                          |                  3
                  4 | Frédérique      | Okell              | France                           |           4 | My Own Man                                                                                                | 2021/08/07     | 5:59 PM  | (no genres listed)                              |                  4
                  5 | Marlène         | Dunphie            | Czech Republic                   |           5 | War Made Easy: How Presidents & Pundits Keep Spinning Us to Death                                         | 2021/04/22     | 11:02 AM | Documentary|War                                 |                  5
                  6 | Andréanne       | Bernt              | United Kingdom                   |           6 | I'm with Lucy                                                                                             | 2021/11/04     | 3:33 PM  | Comedy|Romance                                  |                  6
                  7 | Örjan           | Lanyon             | Peru                             |           7 | Beachhead                                                                                                 | 2021/04/05     | 3:28 AM  | Drama|War                                       |                  7
                  8 | Gisèle          | Bauldrey           | Philippines                      |           8 | Cameraman's Revenge, The (Mest kinematograficheskogo operatora)                                           | 2021/08/18     | 12:04 PM | Animation|Comedy                                |                  8
                  9 | Gaétane         | Junifer            | China                            |           9 | Faces in the Crowd                                                                                        | 2021/05/09     | 11:54 AM | Crime|Drama|Mystery                             |                  9
                 10 | Maëline         | Girardi            | Norway                           |          10 | Muppets Most Wanted                                                                                       | 2021/02/18     | 1:18 AM  | Adventure|Comedy|Crime                          |                 10
                 11 | Liè             | Soares             | Thailand                         |          11 | Eden Log                                :

Requete:
select *
from Realisateur natural join Film ;
 numero_realisateur | nom_realisateur | prenom_realisateur |        nation_realisateur        | numero_film |                                                titre_film                                                 | date_de_sortie |  duree   |                      genre                      
--------------------+-----------------+--------------------+----------------------------------+-------------+-----------------------------------------------------------------------------------------------------------+----------------+----------+-------------------------------------------------
                  2 | Léa             | Brumfield          | Argentina                        |           2 | Deadly Companions, The                                                                                    | 2021/06/19     | 6:07 PM  | Western
                  3 | Naëlle          | MacFaell           | Philippines                      |           3 | 976-EVIL                                                                                                  | 2022/01/15     | 9:41 AM  | Horror
                  4 | Frédérique      | Okell              | France                           |           4 | My Own Man                                                                                                | 2021/08/07     | 5:59 PM  | (no genres listed)
                  5 | Marlène         | Dunphie            | Czech Republic                   |           5 | War Made Easy: How Presidents & Pundits Keep Spinning Us to Death                                         | 2021/04/22     | 11:02 AM | Documentary|War
                  6 | Andréanne       | Bernt              | United Kingdom                   |           6 | I'm with Lucy                                                                                             | 2021/11/04     | 3:33 PM  | Comedy|Romance
                  7 | Örjan           | Lanyon             | Peru                             |           7 | Beachhead                                                                                                 | 2021/04/05     | 3:28 AM  | Drama|War
                  8 | Gisèle          | Bauldrey           | Philippines                      |           8 | Cameraman's Revenge, The (Mest kinematograficheskogo operatora)                                           | 2021/08/18     | 12:04 PM | Animation|Comedy
                  9 | Gaétane         | Junifer            | China                            |           9 | Faces in the Crowd                                                                                        | 2021/05/09     | 11:54 AM | Crime|Drama|Mystery
                 10 | Maëline         | Girardi            | Norway                           |          10 | Muppets Most Wanted                                                                                       | 2021/02/18     | 1:18 AM  | Adventure|Comedy|Crime
                 11 | Liè             | Soares             | Thailand                         |          11 | Eden Log                                                                                                  | 2021/08/03     | 9:15 PM  | Horror|Mystery|Sci-Fi|Thriller
                 12 | Laurène         | Goulding           | Kenya                            |          12 | South Shaolin Master, The (Nan quan wang)                                                                 | 2022/01/04     | 11:17 PM | Action|Adventure|Drama
                 13 | Séverine        | Treuge             | Indonesia                        |          13 | Russell Peters: Outsourced                                                                                | 2021/07/15     | 4:32 AM  | Comedy|Documentary
                 14 | Ruò             | Litton             | Argentina                        |          14 | Girl 6                                                                                                    | 2021/11/13     | 7:37 PM  | Comedy|Drama
                 15 | Lyséa           | Zamudio            | Ecuador                          |          15 | Choose Me                                                                                                 | 2021/05/30     | 10:44 AM | Comedy|Romance
                 16 | Bérengère       | Harston            | China                            |          16 | Rundown, The                                                                                              | 2021/04/05     | 3:31 PM  | Action|Adventure|Comedy
:

Requete: 

select A.nom_acteur, A.prenom_acteur, COUNT (R.numero_film) as NOMBRE
from Acteurs A left outer join Role R
on A.Numero_acteur = R.numero_acteur
group by A.nom_acteur, A.prenom_acteur, A.numero_acteur
order by NOMBRE desc ;


 nom_acteur   | prenom_acteur | nombre 
---------------+---------------+--------
 Myca          | Shiliton      |      1
 Lothaire      | Gwinn         |      1
 Orland        | Swale         |      1
 Yardley       | Repp          |      1
 Paulette      | Rolls         |      1
 Brit          | Danneil       |      1
 Erminia       | Corain        |      1
 Maxie         | Cranham       |      1
 Bay           | Farnes        |      1
 Raymund       | Moggle        |      1
 Bale          | Seal          |      1
 Clayson       | Trowell       |      1
 Stephanus     | De Mars       |      1
 Margaretta    | Bretelle      |      1
 Gerrie        | Cockerill     |      1
 Iggy          | Ferrand       |      1
 Silvana       | Stoyell       |      1
 Minnaminnie   | Deeson        |      1
 Benyamin      | Shillaker     |      1
 Kati          | Brunesco      |      1
 Sherill       | Di Carli      |      1
 Mitch         | Vaskin        |      1
 Garfield      | Rigden        |      1
 Aurelie       | Westgate      |      1
 Rupert        | Johns         |      1
 Guntar        | Rzehor        |      1
 Ibby          | Spragge       |      1
 Zia           | Andrzejak     |      1
 Allina        | Borgnol       |      1
 Isa           | Behnke        |      1
 Ethelbert     | Erwin         |      1
 Taffy         | Dunican       |      1
:


Requete:
select *
from Acteurs A left outer join Role R
on A.numero_acteur = R.numero_acteur;

 numero_acteur |  nom_acteur   | prenom_acteur |          nation_acteur           | date_de_naissance |               nom_du_role                | num
ero_acteur | numero_film 
---------------+---------------+---------------+----------------------------------+-------------------+------------------------------------------+----
-----------+-------------
             2 | Jordan        | Dumbar        | Colombia                         | 2021-01-07        | Database Administrator IV                |    
         2 |           2
             3 | Di            | Forsdyke      | Laos                             | 2021-06-03        | Human Resources Assistant IV             |    
         3 |           3
             4 | Corbin        | Defont        | Indonesia                        | 2021-06-04        | VP Sales                                 |    
         4 |           4
             5 | Verena        | Zorzini       | Sweden                           | 2021-06-05        | Programmer II                            |    
         5 |           5
             6 | Ebony         | Jakubczyk     | Brazil                           | 2021-06-06        | VP Marketing                             |    
         6 |           6
             7 | Andros        | Baume         | China                            | 2021-06-07        | Paralegal                                |    
         7 |           7
             8 | Cathryn       | Fancott       | Armenia                          | 2021-06-08        | Software Test Engineer II                |    
         8 |           8
             9 | Charmain      | Munks         | Japan                            | 2021-06-09        | Payment Adjustment Coordinator           |    
         9 |           9
            10 | Elisabeth     | Burthom       | Indonesia                        | 2021-06-10        | Electrical Engineer                      |    
        10 |          10
            11 | Sergei        | Durant        | China                            | 2021-06-11        | Compensation Analyst                     |    
        11 |          11
            12 | Christye      | Drinkel       | Philippines                      | 2021-06-12        | Pharmaciste a                            |    
        12 |          12
            13 | Camel         | Andri         | Indonesia                        | 2021-06-13        | Food Chemist                             |    
        13 |          13
            14 | Leonanie      | Scurry        | Norway                           | 2021-06-14        | Recruiter                                |    
        14 |          14
            15 | Kennith       | Dumpleton     | Egypt                            | 2021-06-15        | Assistant Media Planner                  |    
        15 |          15
            16 | Karney        | Cranidge      | Portugal                         | 2021-06-16        | Social Worker                            |    
        16 |          16
:


Requete:


select *
from Acteurs A inner join Role R
on A.numero_acteur = R.numero_acteur;

 numero_acteur |  nom_acteur   | prenom_acteur |          nation_acteur           | date_de_naissance |               nom_du_role                | numero_acteur | numero_film 
---------------+---------------+---------------+----------------------------------+-------------------+------------------------------------------+---------------+-------------
             2 | Jordan        | Dumbar        | Colombia                         | 2021-01-07        | Database Administrator IV                |             2 |           2
             3 | Di            | Forsdyke      | Laos                             | 2021-06-03        | Human Resources Assistant IV             |             3 |           3
             4 | Corbin        | Defont        | Indonesia                        | 2021-06-04        | VP Sales                                 |             4 |           4
             5 | Verena        | Zorzini       | Sweden                           | 2021-06-05        | Programmer II                            |             5 |           5
             6 | Ebony         | Jakubczyk     | Brazil                           | 2021-06-06        | VP Marketing                             |             6 |           6
             7 | Andros        | Baume         | China                            | 2021-06-07        | Paralegal                                |             7 |           7
             8 | Cathryn       | Fancott       | Armenia                          | 2021-06-08        | Software Test Engineer II                |             8 |           8
             9 | Charmain      | Munks         | Japan                            | 2021-06-09        | Payment Adjustment Coordinator           |             9 |           9
            10 | Elisabeth     | Burthom       | Indonesia                        | 2021-06-10        | Electrical Engineer                      |            10 |          10
            11 | Sergei        | Durant        | China                            | 2021-06-11        | Compensation Analyst                     |            11 |          11
            12 | Christye      | Drinkel       | Philippines                      | 2021-06-12        | Pharmaciste a                            |            12 |          12
            13 | Camel         | Andri         | Indonesia                        | 2021-06-13        | Food Chemist                             |            13 |          13
            14 | Leonanie      | Scurry        | Norway                           | 2021-06-14        | Recruiter                                |            14 |          14
            15 | Kennith       | Dumpleton     | Egypt                            | 2021-06-15        | Assistant Media Planner                  |            15 |          15
            16 | Karney        | Cranidge      | Portugal                         | 2021-06-16        | Social Worker                            |            16 |          16
:


Requete: 
select P .numero_acteur, P .nom_acteur, S .numero_acteur, S .nom_acteur
from Acteurs P , Acteurs S
where P .nation_acteur = S .nation_acteur
and P .numero_acteur < S .numero_acteur
order by P .numero_acteur, P .nom_acteur, S .numero_acteur, S .nom_acteur;

 numero_acteur |  nom_acteur   | numero_acteur | nom_acteur 
---------------+---------------+---------------+------------
             2 | Jordan        |            21 | Torry
             2 | Jordan        |            43 | Lynnelle
             2 | Jordan        |            77 | Kerwin
             2 | Jordan        |           211 | Kevin
             2 | Jordan        |           244 | Dav
             2 | Jordan        |           256 | Suellen
             2 | Jordan        |           320 | Darill
             3 | Di            |           291 | Yankee
             4 | Corbin        |            10 | Elisabeth
             4 | Corbin        |            13 | Camel
             4 | Corbin        |            18 | Berty
             4 | Corbin        |            60 | Marina
             4 | Corbin        |            85 | Amanda
             4 | Corbin        |            95 | Huey
             4 | Corbin        |            96 | Matt
             4 | Corbin        |           100 | Ken
             4 | Corbin        |           111 | Rosanna
             4 | Corbin        |           114 | Jessy
             4 | Corbin        |           129 | Octavia
             4 | Corbin        |           130 | Olympia
             4 | Corbin        |           132 | Jennine
             4 | Corbin        |           174 | Georges
             4 | Corbin        |           179 | Wilt
             4 | Corbin        |           195 | Kathye
             4 | Corbin        |           213 | Damita
             4 | Corbin        |           228 | Annmarie
             4 | Corbin        |           235 | Heriberto
             4 | Corbin        |           239 | Clayborne
             4 | Corbin        |           241 | Rollie
             4 | Corbin        |           245 | Lexi
             4 | Corbin        |           253 | Dalis
             4 | Corbin        |           258 | Berne
:

Requete:

select *
from Film full outer join Realisateur
on Realisateur.numero_realisateur = Film .numero_realisateur;


 numero_film |                                                titre_film                                                 | date_de_sortie |  duree   |
                      genre                      | numero_realisateur | numero_realisateur | nom_realisateur | prenom_realisateur |        nation_real
isateur        
-------------+-----------------------------------------------------------------------------------------------------------+----------------+----------+-------------------------------------------------+--------------------+--------------------+-----------------+--------------------+----------------------------------
           2 | Deadly Companions, The                                                                                    | 2021/06/19     | 6:07 PM  | Western                                         |                  2 |                  2 | Léa             | Brumfield          | Argentina
           3 | 976-EVIL                                                                                                  | 2022/01/15     | 9:41 AM  | Horror                                          |                  3 |                  3 | Naëlle          | MacFaell           | Philippines
           4 | My Own Man                                                                                                | 2021/08/07     | 5:59 PM  | (no genres listed)                              |                  4 |                  4 | Frédérique      | Okell              | France
           5 | War Made Easy: How Presidents & Pundits Keep Spinning Us to Death                                         | 2021/04/22     | 11:02 AM | Documentary|War                                 |                  5 |                  5 | Marlène         | Dunphie            | Czech Republic
           6 | I'm with Lucy                                                                                             | 2021/11/04     | 3:33 PM  | Comedy|Romance                                  |                  6 |                  6 | Andréanne       | Bernt              | United Kingdom
           7 | Beachhead                                                                                                 | 2021/04/05     | 3:28 AM  | Drama|War                                       |                  7 |                  7 | Örjan           | Lanyon             | Peru
           8 | Cameraman's Revenge, The (Mest kinematograficheskogo operatora)                                           | 2021/08/18     | 12:04 PM | Animation|Comedy                                |                  8 |                  8 | Gisèle          | Bauldrey           | Philippines
           9 | Faces in the Crowd                                                                                        | 2021/05/09     | 11:54 AM | Crime|Drama|Mystery                             |                  9 |                  9 | Gaétane         | Junifer            | China
          10 | Muppets Most Wanted                                                                                       | 2021/02/18     | 1:18 AM  | Adventure|Comedy|Crime                          |                 10 |                 10 | Maëline         | Girardi            | Norway
          11 | Eden Log                                                                                                  | 2021/08/03     | 9:15 PM  | Horror|Mystery|Sci-Fi|Thriller                  |                 11 |                 11 | Liè             | Soares             | Thailand
          12 | South Shaolin Master, The (Nan quan wang)                                                                 | 2022/01/04     | 11:17 PM | Action|Adventure|Drama                          |                 12 |                 12 | Laurène         | Goulding           | Kenya
          13 | Russell Peters: Outsourced                                                                                | 2021/07/15     | 4:32 AM  | Comedy|Documentary                              |                 13 |                 13 | Séverine        | Treuge             | Indonesia
          14 | Girl 6                                                                                                    | 2021/11/13     | 7:37 PM  | Comedy|Drama                                    |                 14 |                 14 | Ruò             | Litton             | Argentina
          15 | Choose Me                                                                                                 | 2021/05/30     | 10:44 AM | Comedy|Romance                                  |                 15 |                 15 | Lyséa           | Zamudio            | Ecuador
:

Requete:

SELECT  Acteurs.*, realisateur.*  FROM acteurs RIGHT JOIN Realisateur ON numero_realisateur = numero_realisateur ;

 numero_acteur |  nom_acteur   | prenom_acteur |          nation_acteur           | date_de_naissance | numero_realisateur | nom_realisateur | prenom_
realisateur |        nation_realisateur        
---------------+---------------+---------------+----------------------------------+-------------------+--------------------+-----------------+--------
------------+----------------------------------
             2 | Jordan        | Dumbar        | Colombia                         | 2021-01-07        |                  2 | Léa             | Brumfie
ld          | Argentina
             3 | Di            | Forsdyke      | Laos                             | 2021-06-03        |                  2 | Léa             | Brumfie
ld          | Argentina
             4 | Corbin        | Defont        | Indonesia                        | 2021-06-04        |                  2 | Léa             | Brumfie
ld          | Argentina
             5 | Verena        | Zorzini       | Sweden                           | 2021-06-05        |                  2 | Léa             | Brumfie
ld          | Argentina
             6 | Ebony         | Jakubczyk     | Brazil                           | 2021-06-06        |                  2 | Léa             | Brumfie
ld          | Argentina
             7 | Andros        | Baume         | China                            | 2021-06-07        |                  2 | Léa             | Brumfie
ld          | Argentina
             8 | Cathryn       | Fancott       | Armenia                          | 2021-06-08        |                  2 | Léa             | Brumfie
ld          | Argentina
             9 | Charmain      | Munks         | Japan                            | 2021-06-09        |                  2 | Léa             | Brumfie
ld          | Argentina
            10 | Elisabeth     | Burthom       | Indonesia                        | 2021-06-10        |                  2 | Léa             | Brumfie
ld          | Argentina
            11 | Sergei        | Durant        | China                            | 2021-06-11        |                  2 | Léa             | Brumfie
ld          | Argentina
            12 | Christye      | Drinkel       | Philippines                      | 2021-06-12        |                  2 | Léa             | Brumfie
ld          | Argentina
            13 | Camel         | Andri         | Indonesia                        | 2021-06-13        |                  2 | Léa             | Brumfield          | Argentina
            14 | Leonanie      | Scurry        | Norway                           | 2021-06-14        |                  2 | Léa             | Brumfield          | Argentina
            15 | Kennith       | Dumpleton     | Egypt                            | 2021-06-15        |                  2 | Léa             | Brumfield          | Argentina
            16 | Karney        | Cranidge      | Portugal                         | 2021-06-16        |                  2 | Léa             | Brumfield          | Argentina
:

Requetes:

SELECT  acteurs.*, realisateur.nom_realisateur as film FROM acteurs RIGHT JOIN realisateur ON numero_realisateur = numero_realisateur;

numero_acteur |  nom_acteur   | prenom_acteur |          nation_acteur           | date_de_naissance |      film       
---------------+---------------+---------------+----------------------------------+-------------------+-----------------
             2 | Jordan        | Dumbar        | Colombia                         | 2021-01-07        | Léa
             3 | Di            | Forsdyke      | Laos                             | 2021-06-03        | Léa
             4 | Corbin        | Defont        | Indonesia                        | 2021-06-04        | Léa
             5 | Verena        | Zorzini       | Sweden                           | 2021-06-05        | Léa
             6 | Ebony         | Jakubczyk     | Brazil                           | 2021-06-06        | Léa
             7 | Andros        | Baume         | China                            | 2021-06-07        | Léa
             8 | Cathryn       | Fancott       | Armenia                          | 2021-06-08        | Léa
             9 | Charmain      | Munks         | Japan                            | 2021-06-09        | Léa
            10 | Elisabeth     | Burthom       | Indonesia                        | 2021-06-10        | Léa
            11 | Sergei        | Durant        | China                            | 2021-06-11        | Léa
            12 | Christye      | Drinkel       | Philippines                      | 2021-06-12        | Léa
            13 | Camel         | Andri         | Indonesia                        | 2021-06-13        | Léa
            14 | Leonanie      | Scurry        | Norway                           | 2021-06-14        | Léa
            15 | Kennith       | Dumpleton     | Egypt                            | 2021-06-15        | Léa
            16 | Karney        | Cranidge      | Portugal                         | 2021-06-16        | Léa
            17 | Teriann       | Antushev      | United States                    | 2021-06-17        | Léa
            18 | Berty         | Bortoloni     | Indonesia                        | 2021-06-18        | Léa
            19 | Rik           | Dominichelli  | Croatia                          | 2021-06-19        | Léa
            20 | Kalie         | Spoole        | Cuba                             | 2021-06-20        | Léa
            21 | Torry         | Hans          | Colombia                         | 2021-06-21        | Léa
            22 | Minnaminnie   | Deeson        | Thailand                         | 2021-06-22        | Léa
            23 | Whittaker     | Renne         | United States                    | 2021-06-23        | Léa
            24 | Susannah      | Tomsu         | Canada                           | 2021-06-24        | Léa
            25 | Anita         | Priestman     | Brazil                           | 2021-06-25        | Léa
            26 | Clerissa      | Climer        | Brazil                           | 2021-06-26        | Léa
            27 | Bernadine     | Ballance      | China                            | 2021-06-27        | Léa
            28 | Whitney       | Harbin        | Philippines                      | 2021-06-28        | Léa
            29 | Harriott      | Edmunds       | Nigeria                          | 2021-06-29        | Léa
            30 | Faustina      | Klimuk        | Japan                            | 2021-06-30        | Léa
            31 | Glenda        | Rentcome      | Palestinian Territory            | 2021-07-01        | Léa
            32 | Garrot        | Duchesne      | China                            | 2021-07-02        | Léa
            33 | Korie         | Tocher        | China                            | 2021-07-03        | Léa
:

Requetes:

SELECT  Categorie_seance.*, Reservation.nom_spectateur as film FROM Categorie_seance RIGHT JOIN Reservation ON numero_seance = numero_seance;

 categorie_de_la_seance |                    type_seance                     |         film         
------------------------+----------------------------------------------------+----------------------
 Numéro 2               | Drama|Horror|Thriller                              | Kally Gamil
 Numéro 3               | Action|Comedy|Crime                                | Kally Gamil
 Numéro 4               | Comedy|Romance                                     | Kally Gamil
 Numéro 5               | Action|Horror|Sci-Fi                               | Kally Gamil
 Numéro 6               | Action                                             | Kally Gamil
 Numéro 7               | Documentary                                        | Kally Gamil
 Numéro 8               | Comedy                                             | Kally Gamil
 Numéro 9               | Drama                                              | Kally Gamil
 Numéro 10              | Crime|Thriller                                     | Kally Gamil
 Numéro 11              | Crime|Drama|Film-Noir                              | Kally Gamil
 Numéro 12              | Action|Adventure|Animation|Children                | Kally Gamil
 Numéro 13              | Adventure|Comedy|Fantasy|Musical                   | Kally Gamil
 Numéro 14              | Adventure|Drama|Romance                            | Kally Gamil
 Numéro 15              | Musical                                            | Kally Gamil
 Numéro 16              | Action|Drama|Western                               | Kally Gamil
 Numéro 17              | Drama|Romance                                      | Kally Gamil
 Numéro 18              | Thriller                                           | Kally Gamil
 Numéro 19              | Drama                                              | Kally Gamil
 Numéro 20              | Comedy|Drama|Romance                               | Kally Gamil
 Numéro 21              | Drama|Mystery|Thriller                             | Kally Gamil
 Numéro 22              | Action|Adventure|Sci-Fi|War|IMAX                   | Kally Gamil
 Numéro 23              | Drama                                              | Kally Gamil
 Numéro 24              | Documentary                                        | Kally Gamil
 Numéro 25              | Adventure|Children|Fantasy                         | Kally Gamil
 Numéro 26              | Action|Sci-Fi|War                                  | Kally Gamil
 Numéro 27              | Drama                                              | Kally Gamil
 Numéro 28              | Comedy|Drama                                       | Kally Gamil
 Numéro 29              | Horror|Mystery|Thriller                            | Kally Gamil
 Numéro 30              | Drama                                              | Kally Gamil
 Numéro 31              | Comedy|Fantasy|Thriller                            | Kally Gamil
 Numéro 32              | Action|Drama                                       | Kally Gamil
 Numéro 33              | Comedy|Romance                                     | Kally Gamil
:

Requetes:
SELECT  Role.*, Reservation.nom_spectateur as film FROM Role RIGHT JOIN Reservation ON numero_place = numero_place;

               nom_du_role                | numero_acteur | numero_film |         film         
------------------------------------------+---------------+-------------+----------------------
 Database Administrator IV                |             2 |           2 | Kally Gamil
 Human Resources Assistant IV             |             3 |           3 | Kally Gamil
 VP Sales                                 |             4 |           4 | Kally Gamil
 Programmer II                            |             5 |           5 | Kally Gamil
 VP Marketing                             |             6 |           6 | Kally Gamil
 Paralegal                                |             7 |           7 | Kally Gamil
 Software Test Engineer II                |             8 |           8 | Kally Gamil
 Payment Adjustment Coordinator           |             9 |           9 | Kally Gamil
 Electrical Engineer                      |            10 |          10 | Kally Gamil
 Compensation Analyst                     |            11 |          11 | Kally Gamil
 Pharmaciste a                            |            12 |          12 | Kally Gamil
 Food Chemist                             |            13 |          13 | Kally Gamil
 Recruiter                                |            14 |          14 | Kally Gamil
 Assistant Media Planner                  |            15 |          15 | Kally Gamil
 Social Worker                            |            16 |          16 | Kally Gamil
 Teacher                                  |            17 |          17 | Kally Gamil
 Sales Associate                          |            18 |          18 | Kally Gamil
 Pharmacist                               |            19 |          19 | Kally Gamil
 Information Systems Manager              |            20 |          20 | Kally Gamil
 Professor                                |            21 |          21 | Kally Gamil
 Developer I                              |            22 |          22 | Kally Gamil
 Financial Advisor                        |            23 |          23 | Kally Gamil
 Nurse Practicioner                       |            24 |          24 | Kally Gamil
 Environmental Specialist                 |            25 |          25 | Kally Gamil
 Software Consultant                      |            26 |          26 | Kally Gamil
 Product Engineer                         |            27 |          27 | Kally Gamil
 Web Developer IV                         |            28 |          28 | Kally Gamil
 Assistant Professor                      |            29 |          29 | Kally Gamil
 Staff Accountant II                      |            30 |          30 | Kally Gamil
 VP Quality Control                       |            31 |          31 | Kally Gamil
 Safety Technician III                    |            32 |          32 | Kally Gamil
 Technical Writer                         |            33 |          33 | Kally Gamil
:




