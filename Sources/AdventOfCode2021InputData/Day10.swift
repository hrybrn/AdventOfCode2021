public enum Day10 {
    public static let example = """
[({(<(())[]>[[{[]{<()<>>
[(()[<>])]({[<{<<[]>>(
{([(<{}[<>[]}>{[]{[(<()>
(((({<>}<{<{<>}{[]{[]{}
[[<[([]))<([[{}[[()]]]
[{[{({}]{}}([{[{{{}}([]
{<[[]]>}<{[{[{[]{()[[[]
[<(<(<(<{}))><([]([]()
<{([([[(<>()){}]>(<<{{
<{([{{}}[<[[[<>{}]]]>[]]
"""
    public static let challenge = """
[<([((<(<<{{{[{}[]][<>{}]}[{[]()}{[]<>}]}<({(){}}<()<>>](<{}<>><[]<>>)>}<<[<<><>>[()<>]]{({}<>)
<([{<<{[{{{[[{{}[]}(<>[])]{[[]<>]>]<[[<><>]([]<>)]{<{}<>>{{}<>}}>}[<((<>())[[]{}])>[<{[][]}<{
[{{[{([[[[{[{((){})(()<>)}{([]())}][(({}{})[[]()]){(<>{})<()<>>}]}][[{<{[]{}}[{}()]>[[{}<>](<>{})]}[
[{[<[(([{[<(<{{}{}}([]<>)>)>([[[[]{}]<(){}>](<{}[]>[[]{}])]({<{}{}>}<{[]()}([][])>))]}{{[[[<[]{}>([]())]{{
{(<[<{(<[(({([{}[]]({}{}))<{()[]}([][])>})([[<{}[]>([])][<[]{}><<><>>]][[<<>[]><(){}>](({}{}){<>()})]))
<{(<[[([[[{<[({}[])<()()>]>}[[{<<>()><{}()>}[<<>{}><[]<>>]]]][(<({[]}([][]))><(<{}{}>){({}())[[]{}]}>){[[
(<(<(((<<{[<[{[]{}}({}{}>]><[<()<>><{}{}>][{()<>}({}())]>]}({<[[[]()]{[]<>}](<[]<>>([]<>))>[{(<><>)([][])}]
<{[[{({<([[<{(<>())[<>[]]}><({[]{}}<<>>)[((){})[[]()]]>]]({<<(<><>)[{}<>]>{[{}{}](()[])}>([([]<>){()
(((<{{{{<<[<([[]<>])({()<>}[{}<>])>(<{<>()}>{[{}<>]})]><[[([[]{}]{{}()})(([]){(){}})]{[{<>{}}<<>{}>
[{((({[[([[[{{[]<>}(<>[])}[([]{})([][])}]<[(<><>){[][]}]{<{}{}>(()())}>]]<([<{{}()}{{}<>}>[(
{(<{[[{(<[[{{[(){}](()[])}}<[(<>{}){[][]}]{<<><>>{{}()}}>][{{{()}<()()>}{<<>()>(()[])}}]]>[{<({[<>
(([([([(([<([([][])<()()>]<({}()]({}())>)>{[{<[][]>(<>{})}<{{}{}}(<>{})>]<{([]())(<>{})}[{<>{}}[()()]]
{<<<{[({(<({(<{}()>){[<>()](()<>)}})<[<{()[]}{<><>}>]{[[(){}]({}<>)][<<>{}><{}<>>]}>><(([<{}[]>(<>
{[[([[([{[(<<(<>[]){{}}><([]<>)<()<>>>><([(){}](<>{}))[{[]}<{}<>>]>)][{{(({}())[[]{}])}{([()<>][[]<>]){<[][]>
{([{(({<<{<{{(<>())[{}{}]}{(()[])[[]<>]}}>}>[<{(<[[]()]<{}()>>)<{((){}]((){})}[[{}]([]{})]>}([({
(([(<({[<({{<{<>[]}<<>{}>](([]()))}<(<{}()>(<>))<((){})[<>{}]>>})({[[<()<>>][<()<>>[<><>]]](({
<<((<<{[{(<<<{{}{}}[{}<>])(<<>()>[[][]])>>([({()[]}[<>{}]){[{}<>]{()<>}}]{(<{}{}>[<>[]])[{<>[]}<[]{
([{(<<{{<{<<<<()<>>([][])>(([]()){()})><{[{}()]{<>{}}}<{()<>}<()[]]>>>}{<<<{()}((){})>[[{}()][<>]]>>[
<[(<<<([{{{((<()>(<>{}))<([]<>)(<>())>){([(){}]<()()>)}}{{[[()[]](()<>)]{(<>()){()()}}}<[({}()){[]<>}][<{}[
(<{{({({({[{([()<>])[{<>{}}]}{<([]())[[]<>]>([()()]{[]<>})}]{(<[{}()]<<>()>>[<<>())<()[]>])[({()()}[[]
<({<({[{(({{{<{}()>[(){}]}{({}<>)<[]{}>}}<<<{}[]>([]<>)>[(()())[()<>]]>}<(<[[]{}]([]())>([(){}]<[][]
{(((<(<{{{<[[{[][]}]<{[]{})[{}()]>]<[<{}<>>][[[]()](()<>)]>>}([([{{}[]}[<>[]]][(<>{}){[]()}])({[{}[]][<>
{{({(<{{(([<(<()<>>{(){}})>[<{()()}[<>{}]>[<<>{}>{[][]}]]]({{<<><>><[][]>}[[<>()]<[]()>>}<<(()())[[]<>]><{<
<{(<([{[{<[[[(<>)({}{})]]((<()<>>))]{{{(()<>)([])}}[{{{}()}{<>[]}}[{[]{}}{<><>}]]}>}][<[<[<[(){}]><({}[])<<>{
<({[[<<([(<{[<[]<>>[{}<>]](({}[]))}{{[{}<>]}([[]{}]([]{}))}>[[{<[]<>)<{}>}{{(){}}{()}}]([(<>{})]<<[]()>
{(([{<{(((<<<(()[])([]())>[<<>{}>({}[]]]>>[[([[]<>]<{}[]>)<[<>[]]{(){}}>][((<>[])(()[]))]]))(([{<{<>}{{}<>
<[((([<{{([{({<>{}}(<><>)){([]{})<()[]>}}({[[][]]([]{})}({[]<>}))][<<[<>{}]([][])>(<{}<>>[(
<[{{[{{<{[[([<<><>>]{({}())([]<>)})]]}[<({([{}{}]{[]})({()()}[(){}])}[{<(){}><{}[]>}])<[[<[]{}>
(<(<{<{<{([([<<><>>]({[]}[()[]])){<{<>()}<()[]>>[([]{}){{}[]}]}]{{({[]()}{<><>})([{}()](()()))}<[<[][]>][<[]
{[{{<[(<(<{<{{<><>}{{}{}}}([()()])>[<<{}>[()()]>[[()()]{[][]}]]}>)[<<<<<[]()><(){}>>[[<>()]<{}{}>]>[{{
([{(<({((([<(<()()><[]()>)({{}()}{<>()})>{[({}[]){{}[]}]{{{}()}{{}<>}}}])(<[{((){}){[][]}}([[]()])]{<{()<>
((<<[{<[(([({(()<>)[{}{}]}{<{}[]><[]<>>})<[<()>]([()<>])>]{((<[]{}><()<>>)<{{}><<>>>)[(<{}()>)<[[]()](
({<([[<{[{[[{{{}<>}({}())}<[<>()][{}[]]]][[{[]<>}]<([]{})[{}()]>]]}]([{[(<[]{}>[{}[]])]}]{((<[{}
<[(<{<[<<({<<{<><>}(()())>)}{(({(){}}){[{}[]]{{}{}}})})>>]>}<[<{(<<[(<()<>>[[]()]){{{}<>}<[][]>}][(<(
({([(<{[{[{<({<>{}}<()[]>)>{[(<><>){{}<>}]}}]}]}[([[{[[[[]{}]][([][]){<>{}}]][[{[][]}(<>[])]
[<([<[([[{{({{<>{}}[{}[]]}([()()]({})))((<(){}>)([[]())({}<>)))}}]])]>{<<(({{<[<{}[]>[()<>]]>}}([[{({}<>)
<{[{<[<([{(<{<<>{}><<>()>}[(<>[])[<><>]]>[(((){}))<(<>){{}[]}>]){(<({}{})[{}{}]}<<[]{}><{}<>>>
{[[{<{[<<<(<<(<><>)<[][]>>{[<>{}]{()<>}}>{{{[]<>}<<>()>}}){(<{<>()}(()<>)>{{{}[]}(()())})]>>({(([<{}()>([]{
[<({(({<<{<<{<<>>{<><>}}((<>{})({}()))>([({}())([][])][{{}{}}<[]<>>])>}((<<<(){}>{{}()}>[{<>()}({}{
<([[[{[(({([{<()<>>}]{(([]<>)[()<>])}){<[{()()}[<><>]]([<><>][{}[]])>{({{}{}}){<{}[]><<><>>}}}}{<({<()<>
<[<((<[[<({{[{<><>}{{}{}}]{<{}{}><(){}>}}{{[[]{}][<>[]]}([<><>][{}()])}}({{{<>()}<<>{}>}([{}]{
{[(<({[{<<{<{{()[]}({}())}{{{}()}<()>}>[<([]{})<<>{}>><{{}()}{{}{}}>]}<{({[][]}{{}[]})}<<{<>{}}[[][]]>>>>
<{[<([(<<([[(<[]<>><{}()>)<({}<>){(){}}>]]<<[(<>{}){{}<>}]([[]{}]({}{}))>>)>{[{[<<[]><{}<>>>(({}{}))
{(<<{{{((<<[({[][]})[([]())(<>{})]][((()<>)([][]))}><([[()[]]]){<<[][]>><<{}[]>[(){}]>}>>[([{[[]<
<{(<<<{{((<{{<{}()>[<>()]}({<>{}}[(){}])}[{({}<>)(()[])}<{(){}}<{}{}>>]>{{[[[]{}]<[][]>]{[{}{}][[]<>]}
{(<(<([{<([<{{<>}<<>{}>}{<()[]>[[]()]}>{<[()()]({}{})>((<>{}))}][{<{[]}[[]()]>{{<>}[[]<>]}}({<<>{}>[[][]]}{<
{((<[<<[{<{[{{{}<>}}<[<>()]([]())>]([<()()><()()>]{[()<>]{[]()}})}<{([[]()]{<>})}(<<[]{}}{[][
[{{{<<<[{[(<[{[]{}}{(){}}}(<()>[[][]])>{{(<><>)<<>()>}<<<>{}>(())>})]{<(<<[]()>({}())><[{}<>]{[]()}>)><
{{[[[({((({{({{}()}<()()>)}{(<{}{}>{()<>})[(()<>)<<><>>]}}<[<[{}[]][()<>]>[[(){}][()()]]>{<{<>[]}[
[<[([{[{[{[{({(){}})}[[<[]{}>{<>()}]]]<[<{<>()}[<><>]>[{<>[]}<()()>]][<{[]{}}({}())>{<[]()>{{}()}}]>
<([{({<(({<{<[[]{}]({}[])>[[<>[]]<<>[]>]}>}{(({(()[])[[]()]})<[[{}<>][<>{}]]<[[]()]([])>>)}))[([[([([][])[<
{<{[([(({<(<{{<>[]}[[]<>]}<(<><>)[[]{}]>>{{{{}()}((){})}))<[{[{}{}]([]{})}{([]())(<>{})}][<(()[])
([[[([<[[{{((<{}{}>(<>()))[({}[]){<>{}}])}}[[(({{}{}}(()[]))<[<>{}]<()<>>>)]<({<()<>>}{{{}<>}{(
(<([{[{<[{[<<<{}()}{{}<>}>({(){}}<[][]>)><{<<>[]>((){})}>](<([()()])[([])({}{})]>[[<{}[]>(<>
([(<{<([{{[[[({}{})[(){}]]]([(()<>)[<>[]]][<{}{}>])][<[<<>[]>[(){}]][[{}[]](<>[])]>({{{}[]>([]{})}[{[][]}[{}
{<[(<[({[<({[({}[])]<{{}<>}[{}()]>}<{{{}{}}[[]]}<(()())[[]<>]>>)>{[{[(<>{})[<>{}]]<({}<>)((){})
{[{[<<<[([[[<{[]{}}[<>()]>(([][])({}[]))]<[[<>()]{<>()}]<[()[]]{[]()}>>]](<{<[()[]]>{({}{})}}(<<[]<>><[]<>>
({[<{{<<({<(<[{}{}]>)[(<{}{}>[[]{}]){<{}()>{<>[]}}]>(({<<><>><<><>>}({[][]}))[[{{}}([]{})]])}[({(<{}[]>{()<>}
({{{{{{[<[<([([]){{}[]}][([]{})])(<([]{})(<>{})><[<>](()())>)>{(([[]()](()())))}]{[[({()[]}{<>(
(({{[<[[[((<{(()<>)[[]{}]}([[]()]{<><>})>))((<{{(){}}(<>())}(<<><>><[]{}>)>(({()()}[{}[]])))<([<<>><()[]>])<
<[[{<({[((<<({{}()}{<><>})<<()[]>[{}()]>>><(<[[][]][()]><[()[]]>)>>){{<((({}<>)(()))(<{}()>)
{<{[([{<{<([{[<>{}][{}{}]}[([]())[[]<>]]]{([<><>]<<>{}})}){[(([][]){<><>}){<<>{}>[()[]]}]<(<()()>{{}})<([]
<{<{<([[[[{[({[][]}<[]{}>){[<>{}]{[]}}]}([[(<>[])][(<><>)<<>{}>]]<([()<>][()()])[<[]()><<>
(<((({{{<([{<[()()]{[]()}>[{{}{}}[()[]]]}]{[(<()<>><[]{}>)<<{}()>[<>[]]}]([[()()]]{(()<>)})}){<{{({}())(
[[[[(([{[(((((<>()){{}{}})(<[]()>({}<>)))<<<()>([]>>((()<>)[<><>])>)([[<()[]><{}()>]{{[][]}([]<
[[{([(<((<[[(([]<>)({}[]))<(())>]]>))>(<([[<{((){})<<>{}>}>{{<()()>[<>[]]}([[]{}]{[][]})}]])[<[<
((([[(<(<[<((<{}()>({}[]))<<<>[]>[()[]]>)([((){})({}())])>][<[(<()()>{{}{}}){<{}<>>{()[]}}]>{[{{{}(
{<(([((<[({<<{<>[]}[[]()]>>([<{}{}]({}())]([()()]<{}<>>))}({[<()()>{[]{}}]((()<>)<()()>)}))([<[[<><>
<[{[<{({([{([({}<>)({}{}>])<([{}{}][()[]])<([]())>>}[{<(<>{})((){})><[<><>](()[])>}<<{<>{}}([])><({}(
({{<<<(([<{<<([]<>)[<>]][{[]{}}{(){}}]>{(({}{}){()<>})}}[({<{}()><(){}>}{([]{})[<>[]]})<[{<>
(<<(<[({[<({<<()<>>({}<>)>})<({<()()><{}{}>}[{(){}}[<><>]]){(({}())<{}<>>)<<(){}>({}<>)>}>>((((<<
[{{{({[{([<<<(<><>)<{}<>>>{{[]()}[()[]]}>{[<<>{}><<>[]>]{[[]{}][()<>]}}>{<<[()<>]><([]{}){<><>}>>[{{{}()}{()[
[[{{(<[[{<<[<[{}{}][{}{}]>>({[(){}]<{}{}>}(((){})[<>[]]))>>}((({<(()<>){{}{}}>{<()[]>[{}[]]}}
(((<{{<{[<<[{{[][]}{[][]}}]{[{[]<>}{()}]}>{{[[[]<>]<(){}>]<[[]()][[]()]>}[<<[]<>>(<>}>{(()<>)<()()>}]}>[
([[{[({{{{[(<<()<>>(<>[])>[(()())<[]{}>])]<{{(<><>)(()<>)}([<><>]<(){}>>}>}[<{({(){}}<()<>>){(<><
{({<{[(<{(({<[[]{}](()())>(((){}))})<(<{<>()}<{}>>{<()()>([]{})})([[<>[]]{[]()}][{<>[]}[{}[]]])>)<{<(<{}()>
{(({[{<{<({{(<[]{}><{}()>)[{{}<>}]}})(<{([()()]{()<>})<{<>()}<[]()>>}<([()[]]([]{}))<{{}{}}<<>[])>>>{({[[]{
<<{{([([[[{<{[<>()]]>{<[[]{}]((){})>{{<>{}}<{}<>>}}}{{{<<>{}>({}<>)}[<(){}><{}()>]}([<{}<>>(<>[])
[{<[<{{{{<({{<{}()>{{}<>}}})[(<{<>[]}{<>()}>[(<>())<()>])<<{()[]}<<>()>>{([]<>>}>]><({[[{}[]]
[{{<(<({(<{[<[<>[]]{()<>}><(<>[]){{}}>]{<<<>{}>[<>{}]><[[]<>]{<>()})}}>)}[[({{<[()()][(){}]>((()[])(
[[[[[[[[<<([<[()[]](<><>)><(<>[])<<>{}>>])><{[<<<>{}><{}()>>({[][]}<[]{}>)]([{<>()}{{}[]}]{{{}{}}{[]()}}
<(((<(([<{(<[[[][]]{()[]}]<(<>{}){[]{}}>>)}>]))[({[<<{(<()[]>([]<>))[<()[]>{()[]}]}<([<><>](<>[]))((<>()
<{{{<{{{[[{([({}{})<[][]>]<[<>{}]{<>()}>)}<({{[]<>}([]())}<<<>[]><<>{}>>){(<[]><(){}>)>>]{{(<([]<>)([](
<[<{[<{{([(({(<>())}{[<>[]](()<>)})([([][]){<>()}][<[]<>>{[]{}}]))])}([{{(<{<>()}[()<>])((
{{[({[[{([<<{<()()>[()[]]}{<<>{}>{{}()}}>>]<{<[<{}()>{[][]}][{[][]}[<><>>]>}>)}]][<((({({([]{})
[(<[([<{[[{{<{{}[]}({}())>([{}[]]{[]})}([([]())<<><>>]<(())<<>>>)}[<[(<>{}){{}<>}]{{()<>}[<>{
{{[{[<([{<[((<(){}><()[]>){[{}]({}<>)})(([()[]]<<>[]>)<[(){}]>]]{({[<>()][<>[]]}({[]{}}{{}[]}))[[[(){}][[]{}
{[<<<[<[{[<((<[]{}>)<([]<>){{}<>}>)<{([]())({}{})}>>](<([(<><>)[[]<>]]<{<><>}{()[]}>)>[(<<<>()><()[]>>
<[<((<<(<{(({<{}<>>{{}<>}}{<[]()>{<>{}}})){<[(<><>)<()<>>]>[{{<>{}}<(){}>}<{<><>}({}())>]}}>)>[[{<[[
[([((<<([<{<[[()()]][[{}[]]]>{{(<>{})<<>()>][{[]()}]}}>])<([{<({{}()}<<>{}>)><[[()]<()[]>][[()<>](<>
{{((<[(({<[<[<[]<>>[(){}]](<[]<>><{}[]>)>][({{[]()}{<>[]}}{(()[]){<><>}})<[<{}[]>]>]>}<{[{{{<>[]}{{}()}}{{<>
({{({{{{{{[<[({}())[<><>]]>[(<<>[]>((){}))]]{{(<<>()>[{}[]])[{<>{}}<{}[]>]}{({{}()})}}}[[({{{}<>}<()()>}({()
[<<[((({<<<(({(){}}({}{})){<<>{}>{{}{}}}]((<[][]>{<>[]}))>>{[[([()()])<[()[]]{[]<>}>][(<<>()>({}[]))<({}[]
{(<<(<{({<<[[(<><>){(){}}][([]())([][])]](<<<>()>[[][]]>[({}{})[()<>]])>((<[[]<>]<{}()>>){<([][])[[]<>
<([{<[({{{[<{{()<>}(<><>)}{<{}()>[{}<>]}>{{[{}{}]<<>>}<[<>()]<<>[]>>}]{<<([][]){[]()}>[<{}()><()()>]>[
(<<[[<(<{[<(([()<>]<()<>>){[{}[]][{}()]})<[[<><>]<[]>]<[[]()]{[]{}}>>>}<[[[<{}{}>(<>())]]{({<>{}}([
[(([<(<(([(<<<{}{}>[[]()]>[<[][]>{[]}]><<<<>()>[[]{}]>([[][]]{<>()})>)(({<<><>>[()()]}))]))>((({((
<<[[<{{({[{({(<><>)(()<>)}[[<><>]])[({<><>}([][]))[[[]()]([]{})]]}]<{({(<>{})[(){}]}({()<>}))([{(
({[<<<<[<(<[<[[]<>]([]<>)>{<(){}><[]()>}]{[(()<>)(()())][{(){}}[<>]]}>)>][(([({([][])<[][]>][{(){}}({})])<<{[
<<({[(<{<(<({<[]<>>{()()}})<{<()[]>[[]()]}(((){}){<>})>>){[[<[{}()]>][{[(){}]({}[])}<[<>[]](<><>)>]]({(<<
<[([[(<<({(<<({}())]>{[[[]<>][[]()]]})<<{([]())[[]<>]}<(())<{}<>>>>{(([]{}){<>{}}){[{}()][(){}]}}>})><
{(<{{[{<({[[[[{}()]({}[])]({()()}{{}[]})]{<[(){}]>([{}()]{{}{}})}](<{<{}[]>[{}[]]}((()[]){<>{}})>([{[]{
<[(<({<(<[<{<([]<>)<<><>>>([<><>])}>]{([{(<><>)(<>())}[{()()}{(){}}]]){{{([]{}}{{}[]}}<{<>[]}[[
<[<[[{([<({([<[]()><[]<>>])[([[]<>]{{}})]}<<<<[]<>>(()[])>({()()}<<>[]>)>[<{[]<>}>({()()}(()<>))]>)({(
{{<[(<{{{<[<(([]<>}[<>{}])><<<<>{}>([]())>[([][])]>]>}}}>)]>(({(<{<<<(({()}<[][]>)[<[]>{<><>}
({{[<[({[[{({{{}[])}<[<>[]][<><>]>)<{{[]{}}{{}[]}}>}]<((<(<>()){()}>)(<[{}()]{<><>}>(<()()>{()[]})
"""
}