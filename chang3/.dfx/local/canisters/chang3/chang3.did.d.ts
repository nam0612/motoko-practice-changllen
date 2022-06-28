import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'day_of_the_week' : ActorMethod<[bigint], string>,
  'greet' : ActorMethod<[string], string>,
  'init_count' : ActorMethod<[bigint], Array<bigint>>,
  'split_test' : ActorMethod<[string], string>,
  'squared_array' : ActorMethod<[Array<bigint>], Array<bigint>>,
  'sum_of_array' : ActorMethod<[Array<bigint>], bigint>,
  'swap' : ActorMethod<[Array<bigint>, bigint, bigint], Array<bigint>>,
}
