# Singleton Function For AddTarget
How to add a function to .addTarget from another class.

    // in class 1
    override func viewDidLoad() {
        super.viewDidLoad()
       
        btnGotoVacation.addTarget(MySingletonClass.sharedInstance, action: Selector("visitBodrum:"), forControlEvents:.TouchUpInside)
    }
    
    // in class 2
    func visitBodrum(sender:AnyObject) {
        print("don't forget to visit yalikavak :) ")
    }