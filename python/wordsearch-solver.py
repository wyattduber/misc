def main():
    # Get Rows/Cols
    rows = int(input("Enter # of rows: "))
    cols = int(input("Enter # of columns: "))
    
    # Create the array
    #grid = [[0]*cols for i in range(rows)]
    #print(grid)
    
    grid_string = input(f"Paste in the grid:\n")
    grid_string = "".join(grid_string.split())
    
    # Do Grid Checks
    if not check_grid(grid_string, rows, cols):
        return
        
    # Form Grid
    grid = form_grid((rows * cols), grid_string, cols)
            
    word_list = input(f"Paste in the words to find, seperated by spaces:\n")
    
    
    # Do checks for word list validity (later)
    tmp = "".join(word_list.split())
    if not tmp.isalpha():
        print("Word list is not alphanumeric!")
        return
    
    word_list = word_list.split()
    print(word_list)            
    
    # Solve wordsearch
    word_search(grid, word_list)
                
def check_grid(grid_string, rows, cols):
    # Do Grid Checks
    # Alphabetic
    if not grid_string.isalpha():
        print("Invalid word search! Must only contain alphabetic (A-Z) characters")
        return False
        
    # Size
    total_elements = rows * cols
    if total_elements != len(grid_string):
        print(f"Invalid word search! Must be exactly {rows} x {cols}")
        return False

    # Else, return true
    return True


def form_grid(total_elements, grid_string, cols):
    
    # Pad the input string with extra spaces if needed
    padded_string = grid_string[:total_elements].ljust(total_elements)

    # Split the padded string into chunks of size 'columns'
    chunks = [padded_string[i:i + cols] for i in range(0, total_elements, cols)]

    # Create the 2D array
    return [list(chunk) for chunk in chunks]
    
        
def word_search(board, words):
    def dfs(row, col, word):
        if not word:
            return True

        if row < 0 or col < 0 or row >= rows or col >= cols or board[row][col] != word[0]:
            return False

        temp, board[row][col] = board[row][col], ''
        found = dfs(row - 1, col, word[1:]) or dfs(row + 1, col, word[1:]) or \
                dfs(row, col - 1, word[1:]) or dfs(row, col + 1, word[1:])
        board[row][col] = temp
        return found

    rows, cols = len(board), len(board[0])
    found_words = []

    for word in words:
        word_found = False
        for r in range(rows):
            for c in range(cols):
                if dfs(r, c, word):
                    word_found = True
                    found_words.append(word)
                    break
            if word_found:
                break

    return found_words
                
        
                
if __name__ == "__main__":
    main()