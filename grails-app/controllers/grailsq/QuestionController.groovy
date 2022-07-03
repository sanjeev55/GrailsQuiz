package grailsq

class QuestionController {

    //def scaffold=true;
    def index(){
     redirect(action: "list");
    }

    def list(){
        def question=Question.findAll();

        render(view: "list",model:[q:question]);
    }
    def create(){
        render(view:"create");

    }

    def playquiz(){

        def question = Question.findAll()
        render(view: "playquiz", model:[q:question.first()])
    }

    def playQuizNext(){
        def questionId = params.id
        def correctAnswer = params.correctAnswer
        def category = params.category

        def checkedAnswer = params.option

        if(checkedAnswer.equalsIgnoreCase(correctAnswer)){
            Result result= new Result()
            result.question = Question.get(questionId)
            result.user = User.get(session.user.id)
            result.marks = 5
            result.save()
        }else{
            Result result= new Result()
            result.question = Question.get(questionId)
            result.user = User.get(session.user.id)
            result.marks = 0
            result.save()
        }

        def resultList= Result.findAllByUser(session.user)

        def questionNotPlayed = Question.findAllByIdNotInList(resultList.question.id)
        println "questionNotPlayed = $questionNotPlayed"

        if(!questionNotPlayed.empty){
            render(view: "playquiz",model: [q: questionNotPlayed.first()])

        }else {
            render(view: "result",model: [r:resultList])
        }




    }

    def edit(){
        def id=params.id;
        println("ID:"+id);
        def question=Question.findById(id);

        render(view: "edit",model:[q:question]);

    }
    def delete(){
        def id=params.id;
        println("Id is:"+ id);
        def q=Question.get(id);
        q.delete();
        redirect(action: "list");

    }
    def show(){
        def id=params.id;
        def question=Question.findById(id);

        render(view: "show",model:[q:question]);

    }
    def save(){
        def question=params.question;
        def option1=params.option1;
        def option2=params.option2;
        def option3=params.option3;
        def option4=params.option4;
        def correctAnswer=params.correctAnswer;
        def category=params.category;

        Question question1=new Question();

        question1.question=question;
        question1.option1=option1;
        question1.option2=option2;
        question1.option3=option3;
        question1.option4=option4;
        question1.correctAnswer=correctAnswer;
        question1.category=category;

        question1.save();

        redirect(action: "list");

    }
    def update(){
        def question1=Question.findById(params.id);
        question1.question=params.question;
        question1.option1=params.option1;
        question1.option2=params.option2;
        question1.option3=params.option3;
        question1.option4=params.option4;
        question1.correctAnswer=params.correctAnswer;
        question1.category=params.category;

        question1.save();

        redirect(action: "list");


    }
}
