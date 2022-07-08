class Seralizable (α : Sort u) where
  toByteArray : α → ByteArray

instance : Seralizable ByteArray where toByteArray := id
instance : Seralizable (List UInt8) where toByteArray := List.toByteArray
