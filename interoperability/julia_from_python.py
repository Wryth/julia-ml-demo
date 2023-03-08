import julia
julia.install()
from julia import Base


def main():
	julia_result = Base.sind(90)
	print(f"Julia result: {julia_result}")

if __name__ == "__main__":
    main()