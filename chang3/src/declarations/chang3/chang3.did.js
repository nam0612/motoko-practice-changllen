export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'day_of_the_week' : IDL.Func([IDL.Nat], [IDL.Text], []),
    'greet' : IDL.Func([IDL.Text], [IDL.Text], []),
    'init_count' : IDL.Func([IDL.Nat], [IDL.Vec(IDL.Nat)], []),
    'split_test' : IDL.Func([IDL.Text], [IDL.Text], []),
    'squared_array' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Vec(IDL.Nat)], []),
    'sum_of_array' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], []),
    'swap' : IDL.Func(
        [IDL.Vec(IDL.Nat), IDL.Nat, IDL.Nat],
        [IDL.Vec(IDL.Nat)],
        [],
      ),
  });
};
export const init = ({ IDL }) => { return []; };
