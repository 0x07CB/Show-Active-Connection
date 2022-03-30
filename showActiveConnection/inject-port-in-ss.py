#/usr/bin/python3
#coding: utf-8
import argparse
parser = argparse.ArgumentParser(description='Injector of port into an ss command.')
parser.add_argument('-p', "--port", type=int,
                    help='the specified port to display actives connections')
args = parser.parse_args()
command = "ss -n -o state established \'( dport = :{p1} or sport = :{p2} )\'".format(
	p1 = args.port, p2 = args.port
	)
print(command,end="")
