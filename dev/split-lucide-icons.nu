#!/usr/bin/env nu
#
# This script is to split the "src/saola/icons/lucide.gleam" file to smaller files
# in a subfolder structure like this:
#
# ```
# src/saola/icons/
# ├── la.gleam
# ├── lb.gleam
# ├── lz.gleam
# ```

def main [] {
  let source_file = "src/saola/icon/lucide.gleam"
  let target_dir = "src/saola/icon/"
  
  # Read the entire file
  let content = open --raw $source_file
  
  # Split by newline + "pub fn " to separate functions
  let parts = ($content | split row "\npub fn ")
  
  # First part is imports, rest are functions
  let function_parts = $parts | skip 1
  
  # Process each function part - add back "pub fn " prefix
  let functions = ($function_parts | each {|part|
    # Extract function name (first word before '(')
    let paren_idx = ($part | str index-of "(")
    let func_name = ($part | str substring 0..$paren_idx)
    
    # Full function text with prefix restored
    let full_text = $"pub fn ($part)"
    
    {
      name: $func_name
      text: $full_text
    }
  })
  
  print $"Found ($functions | length) functions"
  
  # Group by first letter of function name
  let groups = ($functions | group-by {|f|
    # Get first character only
    ($f.name | split chars | first) | str downcase
  })
  
  # Import header for each file
  let import_header = "import lustre/attribute.{type Attribute, attribute as a}\nimport lustre/element/svg\n\n"
  
  # Write each group to its file
  for group_name in ($groups | columns) {
    let group_funcs = $groups | get $group_name
    let sorted_funcs = ($group_funcs | sort-by name)
    
    let file_content = $import_header + ($sorted_funcs | get text | str join "\n\n")
    
    let output_file = $target_dir + $"l($group_name).gleam"
    $file_content | save --force $output_file
    
    print $"Created ($output_file) with ($sorted_funcs | length) functions"
  }
  
  print "Done!"
}
