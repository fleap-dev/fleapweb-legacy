SRC_DIR:=src
BUILD_DIR:=build
ASSETS_DIR:=assets
PAGE_NAME:=FleapWEB
PAGE_URL:=https://fleap.dev

all: build

build:
	test -d $(BUILD_DIR) || mkdir $(BUILD_DIR)
	cp -r $(ASSETS_DIR) $(BUILD_DIR)/$(ASSETS_DIR)
	./fleap-ssg $(SRC_DIR) $(BUILD_DIR) $(PAGE_NAME) $(PAGE_URL)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean build
