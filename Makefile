EXTRA_BUILD_FLAGS=
CLANG_ARGS=--style=Google **/*.cpp **/*.h

.RECIPEPREFIX=>

.PHONY: all test lint format

all: test

lint:
> clang-format -n $(CLANG_ARGS)

format:
> clang-format -i $(CLANG_ARGS)

test:
> xmake config -P . -m release
> xmake build -P . -g test $(EXTRA_BUILD_FLAGS)
> xmake run -P . -g test