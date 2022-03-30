public class ListPractise {
    public static List<planet> planetList = new List<planet>();
    public static string addPlanet(string pName,integer pNumber,integer noMoons){
        string message;
        if (pName != '' && pName !=null){
        Planet obj = new Planet();
        obj.planetName = pName;
        obj.planetNumber = pNumber;
        obj.numberOfMoons = noMoons;
        planetList.add(obj);
        message='Planet added successfully.';
    }else {
        message =' Planet without name cannot be added to list';
        
    }
     return message;
}
    
}
