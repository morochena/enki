# if argument is not given, exit
if [ $# -ne 1 ]; then
    echo "Usage: $0 <version>"
    exit 1
fi

version="$1"

# update the version number in pyproject.toml
sed -i "s/version = .*/version = \"$version\"/" pyproject.toml

# update the version in enki_sr/__init__.py
sed -i "s/__version__ = .*/__version__ = \"$version\"/" enki_sr/__init__.py

echo "bumped version to $version"

git add pyproject.toml enki_sr/__init__.py
git commit -m "bumped version to $version"
git push
git tag "v$version" 
git push origin "v$version" 
