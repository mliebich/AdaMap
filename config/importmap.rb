# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.0.1/dist/stimulus.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "trix"
pin "@rails/actiontext", to: "actiontext.js"
pin "sortablejs", to: "https://ga.jspm.io/npm:sortablejs@1.15.0/modular/sortable.esm.js"
pin "leader-line-new", to: "https://ga.jspm.io/npm:leader-line-new@1.1.9/leader-line.min.js"
pin "plain-draggable", to: "https://ga.jspm.io/npm:plain-draggable@2.5.14/plain-draggable.esm.js"
pin "tailwindcss-stimulus-components", to: "https://ga.jspm.io/npm:tailwindcss-stimulus-components@3.0.4/dist/tailwindcss-stimulus-components.modern.js"
pin "anim-event", to: "https://ga.jspm.io/npm:anim-event@1.0.17/anim-event.esm.js"
pin "cssprefix", to: "https://ga.jspm.io/npm:cssprefix@2.0.17/cssprefix.esm.js"
pin "m-class-list", to: "https://ga.jspm.io/npm:m-class-list@1.1.10/m-class-list.esm.js"
pin "pointer-event", to: "https://ga.jspm.io/npm:pointer-event@1.3.1/pointer-event.esm.js"
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.0.4/lib/assets/compiled/rails-ujs.js"
