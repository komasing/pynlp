import argparse

parser = argparse.ArgumentParser(description='Prints the forename and surname, if provided, in an epic way.')
parser.add_argument('forename', type=str,
                    help="some pretty bloke's forename")
parser.add_argument('--surname', dest='last_name',
                    help="the pretty bloke's last name")

args = parser.parse_args()

print(args.forename.upper())
print(args.last_name.upper())
