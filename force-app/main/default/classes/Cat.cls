public  class Cat {
    public string name ='';
    public string color ='';
    public Cat() {
        //parameterless constructor.
        //constructor name is same as class name 
        //Does 
        System.debug('cat constructor called.');

    }
    public Cat(string n, string clr){
        this.name= n;
        this.color = clr;

    }

   
}
 