export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'capitalize_text' : IDL.Func([IDL.Text], [IDL.Text], []),
    'capitalize_text_2' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Nat], []),
    'decimals_to_bits' : IDL.Func([IDL.Nat], [IDL.Text], []),
    'duplicate_character_1' : IDL.Func([IDL.Text], [IDL.Text], []),
    'is_inside' : IDL.Func([IDL.Text, IDL.Text], [IDL.Bool], []),
    'max_number_with_n_bits' : IDL.Func([IDL.Nat], [IDL.Nat], []),
    'max_number_with_n_bits_1' : IDL.Func([IDL.Nat], [IDL.Nat], []),
    'maximum' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], []),
    'maximum_2' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], []),
    'nat_to_nat8' : IDL.Func([IDL.Nat], [IDL.Nat8], []),
    'sum_of_array' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], []),
    'trim_whitespace' : IDL.Func([IDL.Text], [IDL.Text], []),
  });
};
export const init = ({ IDL }) => { return []; };
