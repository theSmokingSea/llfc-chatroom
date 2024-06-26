#include "MysqlMgr.h"


MysqlMgr::~MysqlMgr() {

}

int MysqlMgr::RegUser(const std::string& name, const std::string& email, const std::string& pwd)
{
	return _dao.RegUser(name, email, pwd);
}

bool MysqlMgr::CheckEmail(const std::string& name, const std::string& email) {
	return _dao.CheckEmail(name, email);
}

bool MysqlMgr::UpdatePwd(const std::string& name, const std::string& pwd) {
	return _dao.UpdatePwd(name, pwd);
}

MysqlMgr::MysqlMgr() {
}

bool MysqlMgr::CheckPwd(const std::string& name, const std::string& pwd, UserInfo& userInfo) {
	return _dao.CheckPwd(name, pwd, userInfo);
}

bool MysqlMgr::AddFriendApply(const int& from, const int& to)
{
	return _dao.AddFriendApply(from, to);
}

std::shared_ptr<UserInfo> MysqlMgr::GetUser(int uid)
{
	return _dao.GetUser(uid);
}

std::shared_ptr<UserInfo> MysqlMgr::GetUser(std::string name)
{
	return _dao.GetUser(name);
}

