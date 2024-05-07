
autoload -U zcalc
function __calc_plugin {
    local expr="${@//[Xx]/*}"
    zcalc -f -e "$expr"
}
aliases[calc]='noglob __calc_plugin'
