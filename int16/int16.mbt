// Copyright 2025 International Digital Economy Academy
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

///|
pub let max_value : Int16 = 32767

///|
pub let min_value : Int16 = -32768

///|
pub fn op_add(self : Int16, that : Int16) -> Int16 {
  (self.to_int() + that.to_int()).to_int16()
}

///|
pub fn op_sub(self : Int16, that : Int16) -> Int16 {
  (self.to_int() - that.to_int()).to_int16()
}

///|
pub fn op_mul(self : Int16, that : Int16) -> Int16 {
  (self.to_int() * that.to_int()).to_int16()
}

///|
pub fn op_div(self : Int16, that : Int16) -> Int16 {
  (self.to_int() / that.to_int()).to_int16()
}

///|
pub fn op_equal(self : Int16, that : Int16) -> Bool {
  self.to_int() == that.to_int()
}

///|
pub fn compare(self : Int16, that : Int16) -> Int {
  self.to_int().compare(that.to_int())
}

///|
pub impl Hash for Int16 with hash(self) { self.to_int() }

///|
pub impl Hash for Int16 with hash_combine(self, hasher) {
  hasher.combine_int(self.to_int())
}
