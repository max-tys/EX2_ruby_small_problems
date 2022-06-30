# Write a method that takes an arbitrary matrix
# and rotates it 90 degrees clockwise as shown above.

def rotate90(matrix)
  # Create a blank new matrix.
  new_matrix = []

  # A 2x3 matrix will be transformed into a 3x2 matrix.
  new_row_count = matrix[0].size
  new_col_count = matrix.size

  # The new row indexes are the old col indexes in sequence.
  # The new col indexes are the old row indexes in REVERSE.
  (0...new_row_count).each do |old_col_idx|
    new_row = (0...new_col_count).to_a.reverse.map do |old_row_idx|
      matrix[old_row_idx][old_col_idx]
    end
    new_matrix << new_row
  end

  new_matrix
end

matrix0 = [
  [3, 4, 1],
  [9, 7, 5]
]

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
