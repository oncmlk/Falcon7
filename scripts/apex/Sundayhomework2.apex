List<String> Fakulteler = new List<String>{'Muhendislik Fakultesi','Fen-Edebiyat Fakultesi','Iktisat Fakultesi'};
List<String> Bolumler = new List<String>();
Bolumler.add('Bilgisayar,Insaat,Cevre');
Bolumler.add('Matematik,Edebiyat,Psikoloji');
Bolumler.add('Iktisat,Isletme,Uluslararasi Iliskiler');

map<string,string> Universite = new map<string,string>();
Universite.put(Fakulteler[0], Bolumler[0]);
Universite.put(Fakulteler[1], Bolumler[1]);
Universite.put(Fakulteler[2], Bolumler[2]);

system.debug(Universite);
