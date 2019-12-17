-- Creamos la base de datos
CREATE DATABASE library;
USE library;

--Creamos la tabla de libros
CREATE TABLE book ( book_id INTEGER,
			title VARCHAR(70),
			author VARCHAR(70),
			genre VARCHAR(70),
			subgenre VARCHAR(70),
			height VARCHAR(70),
			publisher VARCHAR(70),
			PRIMARY KEY(title)
			);

--Ejecutamos las insercciones			
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (1,'Fundamentals of Wavelets','Goswami, Jaideva','tech','signal_processing',228,'Wiley');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (2,'Data Smart','Foreman, John','tech','data_science',235,'Wiley');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (3,'God Created the Integers','Hawking, Stephen','tech','mathematics',197,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (4,'Superfreakonomics','Dubner, Stephen','science','economics',179,'HarperCollins');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (5,'Orientalism','Said, Edward','nonfiction','history',197,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (6,'Nature of Statistical Learning Theory, The','Vapnik, Vladimir','tech','data_science',230,'Springer');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (7,'Integration of the Indian States','Menon, V P','nonfiction','history',217,'Orient Blackswan');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (8,'Drunkard\'s Walk, The','Mlodinow, Leonard','science','mathematics',197,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (9,'Image Processing & Mathematical Morphology','Shih, Frank','tech','signal_processing',241,'CRC');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (10,'How to Think Like Sherlock Holmes','Konnikova, Maria','nonfiction','psychology',240,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (11,'Data Scientists at Work','Sebastian Gutierrez','tech','data_science',230,'Apress');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (12,'Slaughterhouse Five','Vonnegut, Kurt','fiction','classic',198,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (13,'Birth of a Theorem','Villani, Cedric','science','mathematics',234,'Bodley Head');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (14,'Structure & Interpretation of Computer Programs','Sussman, Gerald','tech','computer_science',240,'MIT Press');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (15,'Age of Wrath, The','Eraly, Abraham','nonfiction','history',238,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (16,'Trial, The','Kafka, Frank','fiction','classic',198,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (17,'Statistical Decision Theory\'','Pratt, John','tech','data_science',236,'MIT Press');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (18,'Data Mining Handbook','Nisbet, Robert','tech','data_science',242,'Apress');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (19,'New Machiavelli, The','Wells, H. G.','fiction','novel',180,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (20,'Physics & Philosophy','Heisenberg, Werner','philosophy','science',197,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (21,'Making Software','Oram, Andy','tech','computer_science',232,'O\'Reilly');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (22,'Analysis, Vol I','Tao, Terence','tech','mathematics',248,'HBA');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (23,'Machine Learning for Hackers','Conway, Drew','tech','data_science',233,'O\'Reilly');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (24,'Signal and the Noise, The','Silver, Nate','tech','data_science',233,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (25,'Python for Data Analysis','McKinney, Wes','tech','data_science',233,'O\'Reilly');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (26,'Introduction to Algorithms','Cormen, Thomas','tech','computer_science',234,'MIT Press');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (27,'Beautiful and the Damned, The','Deb, Siddhartha','nonfiction','history',198,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (28,'Outsider, The','Camus, Albert','fiction','classic',198,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (29,'Complete Sherlock Holmes, The - Vol I','Doyle, Arthur Conan','fiction','classic',176,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (30,'Complete Sherlock Holmes, The - Vol II','Doyle, Arthur Conan','fiction','classic',176,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (31,'Wealth of Nations, The','Smith, Adam','science','economics',175,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (32,'Pillars of the Earth, The','Follett, Ken','fiction','novel',176,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (33,'Mein Kampf','Hitler, Adolf','nonfiction','autobiography',212,'Rupa');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (34,'Tao of Physics, The','Capra, Fritjof','science','physics',179,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (35,'Surely You\'re Joking Mr Feynman','Feynman, Richard','science','physics',198,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (36,'Farewell to Arms, A','Hemingway, Ernest','fiction','classic',179,'Rupa');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (37,'Veteran, The','Forsyth, Frederick','fiction','novel',177,'Transworld');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (38,'False Impressions','Archer, Jeffery','fiction','novel',177,'Pan');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (39,'Last Lecture, The','Pausch, Randy','nonfiction','autobiography',197,'Hyperion');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (40,'Return of the Primitive','Rand, Ayn','philosophy','objectivism',202,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (41,'Jurassic Park','Crichton, Michael','fiction','novel',174,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (42,'Russian Journal, A','Steinbeck, John','nonfiction','history',196,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (43,'Tales of Mystery and Imagination','Poe, Edgar Allen','fiction','classic',172,'HarperCollins');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (44,'Freakonomics','Dubner, Stephen','science','economics',197,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (45,'Hidden Connections, The','Capra, Fritjof','science','physics',197,'HarperCollins');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (46,'Story of Philosophy, The','Durant, Will','philosophy','history',170,'Pocket');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (47,'Asami Asami','Deshpande, P L','fiction','novel',205,'Mauj');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (48,'Journal of a Novel','Steinbeck, John','fiction','classic',196,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (49,'Once There Was a War','Steinbeck, John','nonfiction','history',196,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (50,'Moon is Down, The','Steinbeck, John','fiction','classic',196,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (51,'Brethren, The','Grisham, John','fiction','novel',174,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (52,'In a Free State','Naipaul, V. S.','fiction','novel',196,'Rupa');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (53,'Catch 22','Heller, Joseph','fiction','classic',178,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (54,'Complete Mastermind, The','BBC','nonfiction','trivia',178,'BBC');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (55,'Dylan on Dylan','Dylan, Bob','nonfiction','autobiography',197,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (56,'Soft Computing & Intelligent Systems','Gupta, Madan','tech','data_science',242,'Elsevier');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (57,'Textbook of Economic Theory','Stonier, Alfred','tech','economics',242,'Pearson');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (58,'Econometric Analysis','Greene, W. H.','tech','economics',242,'Pearson');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (59,'Learning OpenCV','Bradsky, Gary','tech','signal_processing',232,'O\'Reilly');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (60,'Data Structures Using C & C++','Tanenbaum, Andrew','tech','computer_science',235,'Prentice Hall');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (61,'Computer Vision, A Modern Approach','Forsyth, David','tech','signal_processing',255,'Pearson');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (62,'Principles of Communication Systems','Taub, Schilling','tech','signal_processing',240,'TMH');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (63,'Let Us C','Kanetkar, Yashwant','tech','computer_science',213,'Prentice Hall');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (64,'Amulet of Samarkand, The','Stroud, Jonathan','fiction','novel',179,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (65,'Crime and Punishment','Dostoevsky, Fyodor','fiction','classic',180,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (66,'Angels & Demons','Brown, Dan','fiction','novel',178,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (67,'Argumentative Indian, The','Sen, Amartya','nonfiction','history',209,'Picador');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (68,'Sea of Poppies','Ghosh, Amitav','fiction','novel',197,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (69,'Idea of Justice, The','Sen, Amartya','philosophy','economics',212,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (70,'Raisin in the Sun, A','Hansberry, Lorraine','fiction','novel',175,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (71,'All the President\'s Men','Woodward, Bob','nonfiction','history',177,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (72,'Prisoner of Birth, A','Archer, Jeffery','fiction','novel',176,'Pan');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (73,'Scoop!','Nayar, Kuldip','nonfiction','history',216,'HarperCollins');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (74,'Ahe Manohar Tari','Deshpande, Sunita','nonfiction','autobiography',213,'Mauj');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (75,'Last Mughal, The','Dalrymple, William','nonfiction','history',199,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (76,'Social Choice & Welfare, Vol 39 No. 1','Various','tech','economics',235,'Springer');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (77,'Radiowaril Bhashane & Shrutika','Deshpande, P L','nonfiction','misc',213,'Mauj');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (78,'Gun Gayin Awadi','Deshpande, P L','nonfiction','misc',212,'Mauj');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (79,'Aghal Paghal','Deshpande, P L','nonfiction','misc',212,'Mauj');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (80,'Maqta-e-Ghalib','Garg, Sanjay','nonfiction','poetry',221,'Mauj');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (82,'Manasa','Kale, V P','nonfiction','misc',213,'Mauj');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (83,'India from Midnight to Milennium','Tharoor, Shashi','nonfiction','history',198,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (85,'Great Indian Novel, The','Tharoor, Shashi','fiction','novel',198,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (86,'O Jerusalem!','Lapierre, Dominique','nonfiction','history',217,'vikas');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (87,'City of Joy, The','Lapierre, Dominique','fiction','novel',177,'vikas');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (88,'Freedom at Midnight','Lapierre, Dominique','nonfiction','history',167,'vikas');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (89,'Winter of Our Discontent, The','Steinbeck, John','fiction','classic',196,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (90,'On Education','Russell, Bertrand','philosophy','education',203,'Routledge');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (91,'Free Will','Harris, Sam','nonfiction','psychology',203,'FreePress');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (92,'Bookless in Baghdad','Tharoor, Shashi','nonfiction','history',206,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (93,'Case of the Lame Canary, The','Gardner, Earle Stanley','fiction','novel',179,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (94,'Theory of Everything, The','Hawking, Stephen','science','physics',217,'Jaico');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (95,'New Markets & Other Essays','Drucker, Peter','science','economics',176,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (96,'Electric Universe','Bodanis, David','science','physics',201,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (97,'Hunchback of Notre Dame, The','Hugo, Victor','fiction','classic',175,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (98,'Burning Bright','Steinbeck, John','fiction','classic',175,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (99,'Age of Discontuinity, The','Drucker, Peter','nonfiction','economics',178,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (100,'Doctor in the Nude','Gordon, Richard','fiction','novel',179,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (101,'Down and Out in Paris & London','Orwell, George','nonfiction','autobiography',179,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (102,'Identity & Violence','Sen, Amartya','philosophy','philosophy',219,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (103,'Beyond the Three Seas','Dalrymple, William','nonfiction','history',197,'Random House');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (105,'Talking Straight','Iacoca, Lee','nonfiction','autobiography',175,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (106,'Maugham\'s Collected Short Stories, Vol 3','Maugham, William S','fiction','classic',171,'Vintage');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (107,'Phantom of Manhattan, The','Forsyth, Frederick','fiction','classic',180,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (108,'Ashenden of The British Agent','Maugham, William S','fiction','classic',160,'Vintage');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (109,'Zen & The Art of Motorcycle Maintenance','Pirsig, Robert','philosophy','autobiography',172,'Vintage');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (110,'Great War for Civilization, The','Fisk, Robert','nonfiction','history',197,'HarperCollins');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (111,'We the Living','Rand, Ayn','fiction','novel',178,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (112,'Artist and the Mathematician, The','Aczel, Amir','science','mathematics',186,'HighStakes');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (113,'History of Western Philosophy','Russell, Bertrand','philosophy','philosophy',213,'Routledge');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (115,'Rationality & Freedom','Sen, Amartya','science','economics',213,'Springer');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (116,'Clash of Civilizations and Remaking of the World Order','Huntington, Samuel','nonfiction','history',228,'Simon&Schuster');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (117,'Uncommon Wisdom','Capra, Fritjof','nonfiction','anthology',197,'Fontana');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (118,'One','Bach, Richard','nonfiction','autobiography',172,'Dell');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (120,'To Sir With Love','Braithwaite','fiction','classic',197,'Penguin');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (121,'Half A Life','Naipaul, V S','fiction','novel',196,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (122,'Discovery of India, The','Nehru, Jawaharlal','nonfiction','history',230,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (123,'Apulki','Deshpande, P L','nonfiction','misc',211,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (124,'Unpopular Essays','Russell, Bertrand','philosophy','philosophy',198,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (125,'Deceiver, The','Forsyth, Frederick','fiction','novel',178,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (126,'Veil: Secret Wars of the CIA','Woodward, Bob','nonfiction','history',171,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (127,'Char Shabda','Deshpande, P L','nonfiction','misc',214,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (128,'Rosy is My Relative','Durrell, Gerald','fiction','novel',176,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (129,'Moon and Sixpence, The','Maugham, William S','fiction','classic',180,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (131,'Short History of the World, A','Wells, H G','nonfiction','history',197,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (132,'Trembling of a Leaf, The','Maugham, William S','fiction','novel',205,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (133,'Doctor on the Brain','Gordon, Richard','fiction','novel',204,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (134,'Simpsons & Their Mathematical Secrets','Singh, Simon','science','mathematics',233,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (135,'Pattern Classification','Duda, Hart','tech','data_science',241,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (136,'From Beirut to Jerusalem','Friedman, Thomas','nonfiction','history',202,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (137,'Code Book, The','Singh, Simon','science','mathematics',197,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (138,'Age of the Warrior, The','Fisk, Robert','nonfiction','history',197,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (144,'Numbers Behind Numb3rs, The','Devlin, Keith','science','mathematics',202,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (152,'Life in Letters, A','Steinbeck, John','nonfiction','autobiography',196,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (153,'Information, The','Gleick, James','science','mathematics',233,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (155,'Elements of Information Theory','Thomas, Joy','tech','signal_processing',229,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (156,'Power Electronics - Rashid','Rashid, Muhammad','tech','computer_science',235,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (157,'Power Electronics - Mohan','Mohan, Ned','tech','computer_science',237,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (158,'Neural Networks','Haykin, Simon','tech','data_science',240,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (159,'Grapes of Wrath, The','Steinbeck, John','fiction','classic',196,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (160,'Vyakti ani Valli','Deshpande, P L','nonfiction','misc',211,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (161,'Statistical Learning Theory','Vapnik, Vladimir','tech','data_science',228,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (162,'Empire of the Mughal - The Tainted Throne','Rutherford, Alex','nonfiction','history',180,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (163,'Empire of the Mughal - Brothers at War','Rutherford, Alex','nonfiction','history',180,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (164,'Empire of the Mughal - Ruler of the World','Rutherford, Alex','nonfiction','history',180,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (165,'Empire of the Mughal - The Serpent\'s Tooth','Rutherford, Alex','nonfiction','history',180,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (166,'Empire of the Mughal - Raiders from the North','Rutherford, Alex','nonfiction','history',180,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (167,'Mossad','Baz-Zohar, Michael','nonfiction','history',236,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (168,'Jim Corbett Omnibus','Corbett, Jim','nonfiction','history',223,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (169,'20000 Leagues Under the Sea','Verne, Jules','fiction','novel',190,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (170,'Batatyachi Chal','Deshpande P L','fiction','novel',200,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (171,'Hafasavnuk','Deshpande P L','fiction','novel',211,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (172,'Urlasurla','Deshpande P L','fiction','novel',211,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (173,'Pointers in C','Kanetkar, Yashwant','tech','computer_science',213,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (174,'Cathedral and the Bazaar, The','Raymond, Eric','tech','computer_science',217,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (175,'Design with OpAmps','Franco, Sergio','tech','computer_science',240,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (176,'Think Complexity','Downey, Allen','tech','data_science',230,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (177,'Devil\'s Advocate, The','West, Morris','fiction','novel',178,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (178,'Ayn Rand Answers','Rand, Ayn','philosophy','objectivism',203,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (179,'Philosophy: Who Needs It','Rand, Ayn','philosophy','objectivism',171,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (181,'Data Analysis with Open Source Tools','Janert, Phillip','tech','data_science',230,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (182,'Broca\'s Brain','Sagan, Carl','science','physics',174,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (183,'Men of Mathematics','Bell, E T','science','mathematics',217,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (184,'Oxford book of Modern Science Writing','Dawkins, Richard','science','science',240,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (185,'Justice, Judiciary and Democracy','Ranjan, Sudhanshu','nonfiction','legal',224,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (186,'Arthashastra, The','Kautiyla','philosophy','philosophy',214,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (187,'We the People','Palkhivala','philosophy','philosophy',216,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (188,'We the Nation','Palkhivala','philosophy','philosophy',216,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (189,'Courtroom Genius, The','Sorabjee','nonfiction','autobiography',217,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (190,'Dongri to Dubai','Zaidi, Hussain','nonfiction','history',216,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (191,'History of England, Foundation','Ackroyd, Peter','nonfiction','history',197,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (192,'City of Djinns','Dalrymple, William','nonfiction','history',198,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (193,'India\'s Legal System','Nariman','nonfiction','legal',177,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (194,'More Tears to Cry','Sassoon, Jean','fiction','novel',235,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (195,'Ropemaker, The','Dickinson, Peter','fiction','novel',196,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (196,'Angels & Demons','Brown, Dan','fiction','novel',170,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (199,'Prince, The','Machiavelli','fiction','classic',173,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (200,'Eyeless in Gaza','Huxley, Aldous','fiction','novel',180,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (201,'Tales of Beedle the Bard','Rowling, J K','fiction','novel',184,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (202,'Girl with the Dragon Tattoo','Larsson, Steig','fiction','novel',179,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (203,'Girl who kicked the Hornet\'s Nest','Larsson, Steig','fiction','novel',179,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (204,'Girl who played with Fire','Larsson, Steig','fiction','novel',179,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (207,'Structure and Randomness','Tao, Terence','science','mathematics',252,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (208,'Image Processing with MATLAB','Eddins, Steve','tech','signal_processing',241,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (209,'Animal Farm','Orwell, George','fiction','classic',180,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (210,'Idiot, The','Dostoevsky, Fyodor','fiction','classic',197,'');
INSERT INTO book (book_id,title,author,genre,subgenre,height,publisher) VALUES (211,'Christmas Carol, A','Dickens, Charles','fiction','classic',196,'');

--Creamos la tabla de autores
CREATE TABLE author (author_id INTEGER,
			name VARCHAR(70),
			country VARCHAR(70),
			language VARCHAR(70),
			PRIMARY KEY(name)
			);

--Insertamos los autores
INSERT INTO author(name) SELECT DISTINCT author FROM book ORDER BY author;

--Cambiamos el tipo de columna id_author
ALTER TABLE `author` CHANGE COLUMN `author_id` `author_id` INT(11) NOT NULL , DROP PRIMARY KEY;

--Cambiamos la clave primaria
ALTER TABLE author ADD PRIMARY KEY(name);

--Añandimos clave foranea
ALTER TABLE book ADD CONSTRAINT fk_author FOREIGN KEY (author) REFERENCES author(name) ON DELETE CASCADE;

--Consultas

--Todos los libros de un autor
SELECT * FROM book WHERE author='Follett, Ken';

--Título y páginas de los libros con más de 200 páginas (usando el alias "Libros tochos")
SELECT title AS 'Libros tochos', height FROM book WHERE height >=200;

--Libros cuyo título comience por 'P'
SELECT * FROM book WHERE title LIKE 'P%';

--Los distintos géneros que hay (con alias "Géneros")
SELECT DISTINCT genre AS 'Generos' FROM book;

--Todos los libros del género 'nonfiction' que comiencen con 'R'
SELECT * FROM book WHERE title LIKE 'R%' AND genre='nonfiction';

--Los libros que no sean del género 'nonfiction'
SELECT * FROM book WHERE  genre!='nonfiction';









