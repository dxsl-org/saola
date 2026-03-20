# Script to generate this Gleam code:
# ```gleam
# import lucide_lustre as ll
# import lustre/element
# 
# pub fn get_icon(name: String) {
#   case name {
#     "a-arrow-down" -> ll.a_arrow_down([])
#     _ -> element.none()
#   }
# }
# ```

def main [] {
  const out_file = 'src/saola/icons.gleam'
  const icon_def_file = 'src/lucide_lustre.gleam'
  
  # Read the icon definition file and extract all public icon function names
  let icon_functions = (open --raw $icon_def_file
    | lines 
    | where ($it | str contains 'pub fn')
    | parse --regex 'pub fn (?P<name>\w+)\('
    | get name
    | uniq
    | sort)
  
  # Generate the case statement lines
  let case_lines = ($icon_functions
    | each {|fn_name|
        let kebab_name = ($fn_name | str replace '_' '-' --all)
        '    "' + $kebab_name + '" -> ll.' + $fn_name + '([])'
      }
    | str join "\n")
  
  # Build the complete Gleam source using raw string to avoid interpolation issues
  let gleam_code = ([
    "// Auto-generated, do not manually modify!",
    "import lucide_lustre as ll",
    "import lustre/element",
    "",
    "pub fn get_icon(name: String) {",
    "  case name {",
    $case_lines,
    "    _ -> element.none()",
    "  }",
    "}"
  ] | str join "\n")
  
  # Write to the output file
  $gleam_code | save --force $out_file
  
  print $"Generated ($icon_functions | length) icon mappings to ($out_file)"
}
