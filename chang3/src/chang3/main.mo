import Array "mo:base/Array";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
actor {
  public func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };

  public func swap(array : [Nat], i : Nat, j : Nat) : async [Nat] {
      let mutable_array = Array.thaw<Nat>(array); 
      mutable_array[i] :=  array[j];
      mutable_array[j] :=  array[i];
      return(Array.freeze<Nat>(mutable_array))
  };

  public func init_count(n : Nat) : async [Nat] {
      let array = Array.init<Nat>(n, 0);
      var i = 0;
      while (i < n) {
        array[i] := i;
        i += 1;
      };
      return Array.freeze<Nat>(array);
  };
  

  public func split_test(t : Text) : async Text {
    // thao tac string 
    var iter  = Iter.toArray<Text>(Text.split(t, #text(" ")));
    var result = "";
    for (it in iter.vals()) {
      result #= it;  
    };
    return result
  };

  public func day_of_the_week(n : Nat) : async Text {  
    switch(n){
      case(1) return "Monday";
      case(2) return "Thursday";
      case(3) return "Wednesday";
      case(4) return "Tuesday";
      case(5) return "Friday";
      case(6) return "Saturday";
      case(7) return "Sunday";
    };
  };


  public func squared_array(array : [Nat]) : async [Nat] {
    return(Array.map<Nat,Nat>(array, func(x) { x*x }));
  };

  public func sum_of_array(array : [Nat]) : async Nat {
    let sum = Array.foldLeft<Nat, Nat>(array, 1, func(a , b) {a * b});
    return(sum);
  };
  
};
