package main

import (
	"flag"
	"fmt"
	"io"
	"net"
	"os"
	"sync"
)

type Client struct {
	ServerIp   string
	ServerPort int
	Name       string
	conn       net.Conn
	flag       int
	mapLock    sync.RWMutex
}

func NewClint(serverIp string, serverPort int) *Client {
	client := &Client{
		ServerIp:   serverIp,
		ServerPort: serverPort,
		flag:       999,
	}

	conn, err := net.Dial("tcp", fmt.Sprintf("%s:%d", serverIp, serverPort))
	if err != nil {
		fmt.Printf("net.Dial error:", err)
		return nil
	}
	client.conn = conn
	return client
}

func (client *Client) DealResponse() {
	io.Copy(os.Stdout, client.conn)
}

func (client *Client) menu() bool {
	var flag int
	println("1.public")
	println("2,private")
	println("3.rename")
	println("0.exist")

	fmt.Scanln(&client.flag)

	if flag >= 0 && flag <= 3 {
		return true
	} else {
		fmt.Println("please enter logical numbers")
		return false
	}
}

func (client *Client) SelectUsers() {
	sendMsg := "who\n"
	_, err := client.conn.Write([]byte(sendMsg))

	if err != nil {
		fmt.Println("conn Write err:", err)
		return
	}
}

func (client *Client) PrivateChat() {
	var remoteName string
	var chatMsg string
	client.SelectUsers()
	fmt.Println("please enter the chat target name,exit to exit")
	fmt.Scanln(&remoteName)

	for remoteName != "exit" {
		fmt.Println("pelease enter message,exit to exit")
		fmt.Scanln(&chatMsg)
		for chatMsg != "exit" {
			if len(chatMsg) != 0 {
				sendMsg := "to|" + remoteName + "|" + chatMsg + "\n"
				_, err := client.conn.Write([]byte(sendMsg))
				if err != nil {
					fmt.Println("conn Write err:", err)
					break
				}
			}
			chatMsg = ""
			fmt.Println("pelease enter message,exit to exit")
			fmt.Scanln(&chatMsg)
		}
		client.SelectUsers()
		fmt.Println("please enter the chat target name,exit to exit")
		fmt.Scanln(&remoteName)
	}
}

func (client *Client) PublicChat() {
	var chatMsg string
	fmt.Println("please enter the message,enter exit to exit")
	fmt.Scanln(&chatMsg)

	for chatMsg != "exit" {
		if len(chatMsg) != 0 {
			sendMsg := chatMsg + "\n"
			_, err := client.conn.Write([]byte(sendMsg))
			if err != nil {
				fmt.Println("conn Write err:", err)
				break
			}
		}
		chatMsg = ""
		fmt.Println("please enter the message,enter exit to exit")
		fmt.Scanln(&chatMsg)
	}
}

func (client *Client) UpdateName() bool {
	println("please enter username:")
	fmt.Scanln(&client.Name)

	sendMsg := "rename|" + client.Name + "\n"
	_, err := client.conn.Write([]byte(sendMsg))
	if err != nil {
		fmt.Println("conn.Write err:", err)
		return false
	}
	return true

}

func (client *Client) Run() {
	for client.flag != 0 {
		client.mapLock.Lock()
		for client.menu() != true {
		}
		println(client.flag)
		switch client.flag {
		case 1:
			println("use public model")
			client.PublicChat()
			break
		case 2:
			println("use private model")
			client.PrivateChat()
			break
		case 3:
			println("renameing")
			client.UpdateName()
			break
		}
		client.mapLock.Unlock()
	}
}

var serverIp string
var serverPort int

func init() {
	flag.StringVar(&serverIp, "ip", "127.0.0.1", "set server ip (default 127.0.0.1")
	flag.IntVar(&serverPort, "port", 8888, "set server port (default 8888")
}

func main() {
	flag.Parse()

	client := NewClint(serverIp, serverPort)
	if client == nil {
		fmt.Println("can't connect server")
		return
	}

	go client.DealResponse()

	go fmt.Println("connect server success")

	client.Run()
}
