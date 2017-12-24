/*
 * stack.h
 *
 *  Created on: Nov 11, 2017
 *      Author: shrey
 */

#ifndef STACK_H_
#define STACK_H_

struct segment{
	unsigned char sourcePort[2];
	unsigned char destPort[2];
	unsigned char seqNum[2];
	unsigned char ackNum[2];
	unsigned char syn[2];
	unsigned char fin[2];
	unsigned char data[2];
	unsigned char checksum;
};

struct packet{
	unsigned char sourceIP[4];
	unsigned char destIP[4];
	struct segment * payload;
};

int disconnect(int device);
int recDisconnect(int device);
int connect(int device, unsigned char * sourceIP, unsigned char * sourcePort, unsigned char * destinationIP, unsigned char * destinationPort);
int send(int device, unsigned char data);
void packetToString(struct packet pack, char * write);
int accept(int device);
int recv(int device);


#endif /* STACK_H_ */