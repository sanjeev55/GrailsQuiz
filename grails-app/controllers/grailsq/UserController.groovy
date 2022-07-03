package grailsq

import org.compass.core.engine.SearchEngineQueryParseException

class UserController {

    //def scaffold=true;
    def index(){
        redirect(action: "list");
    }
    def list(){

        def users=User.findAll();

        render(view: "list",model:[u:users]);

    }
    def show(){
        def user=User.findById(params.id);

        render(view: "show",model: [u:user]);
    }
    def edit(){
        def id=params.id;
        println("Id is:"+ id);

        def user=User.findById(id);

        render(view:"edit", model:[u:user]);




    }
    def delete(){
        def id=params.id;
        println("Id is:"+ id);
            def u=User.get(id);
                u.delete();
        redirect(action: "list");
    }
    def create(){
            render(view: "create");
    }
    def save(){
        def username=params.name;
        def email=params.email;
        def password=params.password;

        User user=new User();
        user.name=username;
        user.email=email;
        user.password=password;

        user.save();

        redirect(action: "list");
    }
    def update(){
        def user=User.findById(params.id);
        user.name=params.name;
        user.password=params.password;
        user.email=params.email;


        user.save();

        redirect(action:"list");


    }
    def login(){
        render(view:"login");
    }
    def dashboard(){
        def email=params.email;
        def password=params.password;

        def user=User.findByEmailAndPassword(email,password);

        if(user){
            session["user"] = user
            render(view: "dashboard");
        }
        else{
            redirect(action: "login");
        }
    }
    def searchableService//the green dot represents dependency injection

    /**
     * Index page with search form and results
     */
    def searchUser = {
        if (!params.q?.trim()) {
            return [:]
        }
        try {
            return [searchResult: searchableService.search(params.q, params)]
        } catch (SearchEngineQueryParseException ex) {
            return [parseException: true]
        }
        render(view: "searchUser")
    }
    def test(){
        def id=params.value

//        render "Welcome ${message}"

        def list=User.findById(Long.parseLong(id))

        render(template: "test",model:[u:list])
    }
    def welcome(){
        def v=params.value
        println "v=$v"

        if(!v?.trim()){
            return[:]
        }
        def c=User.createCriteria()
        def results=c.list{
            like("name","${v}%")
            order("name","desc")
        }
        render(view:"welcome",model:[r:results])
    }

    def getData(){
        def v=params.v;
        /*def eachPrice=Product.findByCode(1);
        def p=eachPrice.price

        def total=v*p*/
         render total;
    }


}
