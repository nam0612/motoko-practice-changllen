import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'capitalize_text' : ActorMethod<[string], string>,
  'capitalize_text_2' : ActorMethod<[bigint, bigint], bigint>,
  'decimals_to_bits' : ActorMethod<[bigint], string>,
  'duplicate_character_1' : ActorMethod<[string], string>,
  'is_inside' : ActorMethod<[string, string], boolean>,
  'max_number_with_n_bits' : ActorMethod<[bigint], bigint>,
  'max_number_with_n_bits_1' : ActorMethod<[bigint], bigint>,
  'maximum' : ActorMethod<[Array<bigint>], bigint>,
  'maximum_2' : ActorMethod<[Array<bigint>], bigint>,
  'nat_to_nat8' : ActorMethod<[bigint], number>,
  'sum_of_array' : ActorMethod<[Array<bigint>], bigint>,
  'trim_whitespace' : ActorMethod<[string], string>,
}
