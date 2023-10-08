import re
from collections import Counter

def read_text_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        text = file.read()
    return text

def tokenize_text(text):
    words = re.findall(r'\b\w+\b', text.lower())
    return words

def count_words(words, ignored_words):
    word_counter = Counter()
    for word in words:
        if not any(re.search(ignored_word, word) for ignored_word in ignored_words):
            word_counter[word] += 1
    return word_counter

def calculate_percentages(word_counter, total_words):
    percentages = {word: (count / total_words) * 100 for word, count in word_counter.items()}
    return percentages

def save_output_to_file(output_file_path, most_common, percentages):
    with open(output_file_path, 'w', encoding='utf-8') as output_file:
        output_file.write("Most common words and their occurrences (percentages):\n\n")
        for word, count in most_common:
            percentage = percentages[word]
            output_file.write(f"{word}: {count} times ({percentage:.2f}%)\n")

def main():
    file_path = input("Enter the path to the text file: ")
    ignored_words = input("Enter ignored words (regex patterns, separated by '|'): ").split('|')

    text = read_text_file(file_path)
    words = tokenize_text(text)
    word_counter = count_words(words, ignored_words)
    total_words = len(words)
    percentages = calculate_percentages(word_counter, total_words)

    num_most_common = int(input("Enter the number of most common words to display: "))
    most_common = word_counter.most_common(num_most_common)

    print("\nMost common words and their occurrences (percentages):\n")
    for word, count in most_common:
        percentage = percentages[word]
        print(f"{word}: {count} times ({percentage:.2f}%)")

    # Specify the output file path and save the output
    output_file_path = input("Enter the output file path: ")
    save_output_to_file(output_file_path, most_common, percentages)

if __name__ == "__main__":
    main()
