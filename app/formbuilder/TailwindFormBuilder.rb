class TailwindFormBuilder < ActionView::Helpers::FormBuilder
  def email_field(method, opts={})
    default_opts = { class: "block shadow rounded-md border border-gray-200 outline-none px-3 py-2 mt-2 w-full" }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end
  def password_field(method, opts={})
    default_opts = { class: "block shadow rounded-md border border-gray-200 outline-none px-3 py-2 mt-2 w-full" }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end
  def submit(method, opts={})
    default_opts = { class: "btn" }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end
  def check_box(method, opts={})
    default_opts = { class: "w-4 h-4 bg-gray-50 rounded border border-gr-300 focus:ring-3 focus:ring-blue-300 dark:border-gray-600 dark:focus:ring-blue-600 dark:ring-offset-gray-800" }
    merged_opts = default_opts.merge(opts)
    super(method, merged_opts)
  end
end
