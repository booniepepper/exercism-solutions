type nucleotide = A | C | G | T

let distance acc x y = acc + if x != y then 1 else 0

let hamming_distance xs ys =
  match (List.length xs, List.length ys) with
  | 0, 0 -> Ok 0
  | 0, _ -> Error "left strand must not be empty"
  | _, 0 -> Error "right strand must not be empty"
  | xlen, ylen ->
      if xlen != ylen then
        Error "left and right strands must be of equal length"
      else Ok (List.fold_left2 distance 0 xs ys)
