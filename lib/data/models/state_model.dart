class StateModel
{
   final String name ;
   final int amount ;
   final int target ;
   final List<String> imagesUrl ;
   final String description ;
   final int priority ;
   final String startDate ;
   final String endDate ;
   final String userName ;
   final String nationalCardImage ;

   StateModel(
      this.name,
      this.amount,
      this.target,
      this.imagesUrl,
      this.description,
      this.priority,
      this.startDate,
      this.endDate,
       this.userName,
      this.nationalCardImage);

   Map<String, dynamic> toMap() {
    return {
      'name': name,
      'amount': amount,
      'target': target,
      'imagesUrl': imagesUrl,
      'description': description,
      'priority': priority,
      'startDate': startDate,
      'endDate': endDate,
      'userName': userName,
      'nationalCardImage': nationalCardImage,
    };
  }

}