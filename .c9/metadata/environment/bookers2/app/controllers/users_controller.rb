{"filter":false,"title":"users_controller.rb","tooltip":"/bookers2/app/controllers/users_controller.rb","undoManager":{"mark":17,"position":17,"stack":[[{"start":{"row":14,"column":34},"end":{"row":15,"column":0},"action":"insert","lines":["",""],"id":1},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":15,"column":4},"end":{"row":19,"column":13},"action":"insert","lines":["if @book.user == current_user","            render \"edit\"","          else","            redirect_to books_path","          end"],"id":2}],[{"start":{"row":16,"column":8},"end":{"row":16,"column":10},"action":"remove","lines":["  "],"id":3},{"start":{"row":16,"column":6},"end":{"row":16,"column":8},"action":"remove","lines":["  "]},{"start":{"row":16,"column":4},"end":{"row":16,"column":6},"action":"remove","lines":["  "]}],[{"start":{"row":17,"column":8},"end":{"row":17,"column":10},"action":"remove","lines":["  "],"id":4},{"start":{"row":17,"column":6},"end":{"row":17,"column":8},"action":"remove","lines":["  "]},{"start":{"row":17,"column":4},"end":{"row":17,"column":6},"action":"remove","lines":["  "]}],[{"start":{"row":19,"column":8},"end":{"row":19,"column":10},"action":"remove","lines":["  "],"id":5},{"start":{"row":19,"column":6},"end":{"row":19,"column":8},"action":"remove","lines":["  "]},{"start":{"row":19,"column":4},"end":{"row":19,"column":6},"action":"remove","lines":["  "]},{"start":{"row":19,"column":2},"end":{"row":19,"column":4},"action":"remove","lines":["  "]}],[{"start":{"row":18,"column":10},"end":{"row":18,"column":12},"action":"remove","lines":["  "],"id":6},{"start":{"row":18,"column":8},"end":{"row":18,"column":10},"action":"remove","lines":["  "]},{"start":{"row":18,"column":6},"end":{"row":18,"column":8},"action":"remove","lines":["  "]},{"start":{"row":18,"column":4},"end":{"row":18,"column":6},"action":"remove","lines":["  "]}],[{"start":{"row":18,"column":4},"end":{"row":18,"column":5},"action":"insert","lines":[" "],"id":7},{"start":{"row":18,"column":5},"end":{"row":18,"column":6},"action":"insert","lines":[" "]}],[{"start":{"row":18,"column":27},"end":{"row":18,"column":28},"action":"remove","lines":["h"],"id":8},{"start":{"row":18,"column":26},"end":{"row":18,"column":27},"action":"remove","lines":["t"]},{"start":{"row":18,"column":25},"end":{"row":18,"column":26},"action":"remove","lines":["a"]},{"start":{"row":18,"column":24},"end":{"row":18,"column":25},"action":"remove","lines":["p"]},{"start":{"row":18,"column":23},"end":{"row":18,"column":24},"action":"remove","lines":["_"]},{"start":{"row":18,"column":22},"end":{"row":18,"column":23},"action":"remove","lines":["s"]},{"start":{"row":18,"column":21},"end":{"row":18,"column":22},"action":"remove","lines":["k"]},{"start":{"row":18,"column":20},"end":{"row":18,"column":21},"action":"remove","lines":["o"]},{"start":{"row":18,"column":19},"end":{"row":18,"column":20},"action":"remove","lines":["o"]},{"start":{"row":18,"column":18},"end":{"row":18,"column":19},"action":"remove","lines":["b"]}],[{"start":{"row":18,"column":18},"end":{"row":18,"column":44},"action":"insert","lines":["user_path(current_user.id)"],"id":9}],[{"start":{"row":19,"column":2},"end":{"row":19,"column":3},"action":"insert","lines":[" "],"id":10},{"start":{"row":19,"column":3},"end":{"row":19,"column":4},"action":"insert","lines":[" "]}],[{"start":{"row":15,"column":33},"end":{"row":15,"column":34},"action":"insert","lines":["."],"id":11},{"start":{"row":15,"column":34},"end":{"row":15,"column":35},"action":"insert","lines":["i"]},{"start":{"row":15,"column":35},"end":{"row":15,"column":36},"action":"insert","lines":["d"]}],[{"start":{"row":15,"column":17},"end":{"row":15,"column":18},"action":"insert","lines":["_"],"id":12},{"start":{"row":15,"column":18},"end":{"row":15,"column":19},"action":"insert","lines":["i"]},{"start":{"row":15,"column":19},"end":{"row":15,"column":20},"action":"insert","lines":["d"]}],[{"start":{"row":15,"column":19},"end":{"row":15,"column":20},"action":"remove","lines":["d"],"id":13},{"start":{"row":15,"column":18},"end":{"row":15,"column":19},"action":"remove","lines":["i"]},{"start":{"row":15,"column":17},"end":{"row":15,"column":18},"action":"remove","lines":["_"]},{"start":{"row":15,"column":16},"end":{"row":15,"column":17},"action":"remove","lines":["r"]},{"start":{"row":15,"column":15},"end":{"row":15,"column":16},"action":"remove","lines":["e"]},{"start":{"row":15,"column":14},"end":{"row":15,"column":15},"action":"remove","lines":["s"]},{"start":{"row":15,"column":13},"end":{"row":15,"column":14},"action":"remove","lines":["u"]},{"start":{"row":15,"column":12},"end":{"row":15,"column":13},"action":"remove","lines":["."]},{"start":{"row":15,"column":11},"end":{"row":15,"column":12},"action":"remove","lines":["k"]},{"start":{"row":15,"column":10},"end":{"row":15,"column":11},"action":"remove","lines":["o"]},{"start":{"row":15,"column":9},"end":{"row":15,"column":10},"action":"remove","lines":["o"]}],[{"start":{"row":15,"column":8},"end":{"row":15,"column":9},"action":"remove","lines":["b"],"id":14}],[{"start":{"row":15,"column":8},"end":{"row":15,"column":9},"action":"insert","lines":["u"],"id":15},{"start":{"row":15,"column":9},"end":{"row":15,"column":10},"action":"insert","lines":["s"]},{"start":{"row":15,"column":10},"end":{"row":15,"column":11},"action":"insert","lines":["e"]},{"start":{"row":15,"column":11},"end":{"row":15,"column":12},"action":"insert","lines":["r"]}],[{"start":{"row":15,"column":12},"end":{"row":15,"column":13},"action":"insert","lines":["_"],"id":16},{"start":{"row":15,"column":13},"end":{"row":15,"column":14},"action":"insert","lines":["i"]},{"start":{"row":15,"column":14},"end":{"row":15,"column":15},"action":"insert","lines":["d"]}],[{"start":{"row":15,"column":14},"end":{"row":15,"column":15},"action":"remove","lines":["d"],"id":17},{"start":{"row":15,"column":13},"end":{"row":15,"column":14},"action":"remove","lines":["i"]},{"start":{"row":15,"column":12},"end":{"row":15,"column":13},"action":"remove","lines":["_"]}],[{"start":{"row":15,"column":12},"end":{"row":15,"column":13},"action":"insert","lines":["."],"id":18},{"start":{"row":15,"column":13},"end":{"row":15,"column":14},"action":"insert","lines":["i"]},{"start":{"row":15,"column":14},"end":{"row":15,"column":15},"action":"insert","lines":["d"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":28},"end":{"row":4,"column":28},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1629526642553,"hash":"46f74ff835b4f6587b1663dda4893a3a9ab39a0d"}