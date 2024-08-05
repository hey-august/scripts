import os
import yaml

def get_slugs_from_mdx_files(directory):
    slugs = []
    
    for root, _, files in os.walk(directory):
        for filename in files:
            if filename.endswith((".mdx", ".md")):
                filepath = os.path.join(root, filename)
                with open(filepath, 'r', encoding='utf-8') as file:
                    # Read the front matter section
                    front_matter = ""
                    in_front_matter = False
                    for line in file:
                        if line.strip() == '---':
                            if in_front_matter:
                                break
                            else:
                                in_front_matter = True
                        elif in_front_matter:
                            front_matter += line

                    # Parse the front matter
                    front_matter_data = yaml.safe_load(front_matter)
                    if 'slug' in front_matter_data:
                        slugs.append(front_matter_data['slug'])

    return slugs

if __name__ == "__main__":
    import sys
    if len(sys.argv) != 2:
        print("Usage: python generate_slugs.py <directory>")
        sys.exit(1)

    directory = sys.argv[1]
    slugs = get_slugs_from_mdx_files(directory)

    with open('slugs_output.txt', 'w', encoding='utf-8') as output_file:
        for slug in slugs:
            output_file.write(f"{slug}\n")


    print("Slugs written to slugs_output.txt")