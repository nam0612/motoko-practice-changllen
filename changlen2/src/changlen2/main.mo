import Nat8 "mo:base/Nat8";
import Nat16 "mo:base/Nat16";
import Nat32 "mo:base/Nat32";
import Nat64 "mo:base/Nat64";
import Array "mo:base/Array";
import Text "mo:base/Text";
import Char "mo:base/Char";
import Prim "mo:prim";
import Iter "mo:base/Iter";
import Nat "mo:base/Nat";
actor {
    //nat number to nat8
    public func nat_to_nat8(n : Nat) : async Nat8 {
        if(n > 255) {
            return 0; // n is too big to be representend by a Nat8, returning 0 is a personal choice you could return basically anything maybe 255 makes more sense.
        } else {
            return Nat8.fromNat(n);
        };
    }; 

    // 2^6 = 2^5 ... 2^0 + 1
    public func max_number_with_n_bits(n : Nat) : async Nat {
        var count = n;
        var max_number = 0;
        while(count > 0){
            max_number := max_number + 2**(count - 1);
            count := count - 1;
        };
        return(max_number);
    };

    public func max_number_with_n_bits_1(n : Nat) : async Nat {
        return(2 **(n) - 1);
    };


    //Challenge 5: Write a function capitalize_text   that takes a  Text t  and returns the capitalized version of it
   
    func _capitalize_character(char : Char) : Char {
        let unicode_value = Char.toNat32(char);
        if(unicode_value >= 97 or unicode_value <= 122){
            return(Char.fromNat32(unicode_value - 32))
        } else {
            return (Char.fromNat32(unicode_value));
        };
    };

    // func cap(word : Text) : async Text {
    //     var result = "";
    //     for (char in word.chars()) {
    //         result #= _capitalize_character(char);
    //     };
    //     return result;
    // }


    public func capitalize_text(word : Text) : async Text {
        return Text.map(word, Prim.charToUpper);
    };

    public func is_inside(t : Text, l : Text) : async Bool {
        let p = #text(l);
        return(Text.contains(t, p));
    };



    public func capitalize_text_2(a: Nat, b : Nat) : async Nat {
        return a + b;
    };

    // func split(t : Text, p : Pattern) : Iter.Iter<Text> {
    //     return t.spli;
    // }

    public func trim_whitespace(text : Text) : async Text {
        let trimmedText : Text = Text.trim(text, #char ' ');
        return trimmedText;
    };


//array : [Nat]
    public func sum_of_array(xs : [Nat]) : async Nat {
    var sum = 0;
    // for(number in xs.vals()){
    //   sum += number;
    // };
    var i = 0;
    while (i < xs.size()) {
            sum += xs[i];
        i += 1;
    };
    return(sum);
    };

    public func duplicate_character_1(t: Text) : async Text {
        var iter = Iter.toArray<Char>(Text.toIter(t));
        let array_text : [Text] = Array.map<Char, Text>(iter, Char.toText); 
        var i = 0;
        var j = 0;
        while (i < array_text.size()) {
            j := i + 1;
            if (Text.equal(array_text[i], array_text[j])) {
                 return array_text[i];
            };
            i += 1;
        };     
        return "N"
    };

    // public func duplicate_character(t : Text) : async Text {
    //     var characters : [Char] = [];
    //     for (character in t.vals()){
    //         switch(Array.filter(characters, f(x) : Text -> Bool {x == character})){
    //             case(null) {
    //                 characters := Array.append<Text>(characters, [character]);
    //             };
    //             case(?char){
    //                 return Char.toText(char);
    //             };
    //         };
    //     };
    //     return (t);
    // };

    public func maximum(array : [Nat]) : async Nat {
    if(array.size() == 0) return 0;
    var maximum = array[0];
    for (val in array.vals()){
      if (val > maximum) {
        maximum := val;
      };
    };
    return(maximum);
  };

  public func maximum_2(array : [Nat]) : async Nat {
    if(array.size() == 0) return 0;
    var maximum = array[0];
    var n = 1;
    while(n < array.size()){
        if(array[n] < maximum) {
            maximum := array[n];
        };
        n := n + 1;
    };
    return(maximum)
  };

  public func decimals_to_bits(n : Nat) : async Text {
        var m = n;
        var bit = "";
        var modulo = 0;
        while(m > 0){
            modulo := m % 2;
            m /= 2;
            bit #= Nat.toText(modulo);
        };
        return bit
    };
   
}
