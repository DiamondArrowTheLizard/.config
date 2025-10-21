return {
    settings = {
        pylsp = {
            plugins = {
                pyflakes = { enabled = true },
                pycodestyle = { enabled = true },
                autopep8 = { enabled = false },
                yapf = { enabled = true },
                mccabe = { enabled = true },
                pylsp_mypy = { enabled = false },
                pylsp_black = { enabled = false },
                pylsp_isort = { enabled = false },
            },
        },
    },
}
