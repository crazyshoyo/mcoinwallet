class Apis {
  static const baseUrl = 'http://ozstaff.erginous.com/api/v1';
  static const login = '$baseUrl/login';
  static const phoneLogin = '$baseUrl/send-otp';
  static const forgotPassword = '$baseUrl/forgot-password';
  static const otp = '$baseUrl/verify-otp';
  static const createPassword = '$baseUrl/create-password';
  static const reportTypes = '$baseUrl/report-types';
  static const sessionLogin = '$baseUrl/session-login';
  static const logout = '$baseUrl/logout';
  static const changeAvailabiltiy = '$baseUrl/change-availability';
  static const profile = '$baseUrl/profile';
  static const similarJobs = '$baseUrl/similar-jobs';
  static const applyJob = '$baseUrl/apply-job';
  static const notification = '$baseUrl/notifications/get';
  static const createTicket = '$baseUrl/create-ticket';
  static const tickets = '$baseUrl/tickets';
  static const dashBoard = '$baseUrl/dashboard';
  static const changeShiftStatus = '$baseUrl/change-shift-status/';
  static const getWeekShifts = '$baseUrl/get-week-shifts';
  static const uploadFile = '$baseUrl/upload-file';
  static const upcomingCheckStart = '$baseUrl/shifts/check-start/';
  static const clockIn = '$baseUrl/shifts/change-checkin-status';
  static const replyChat = "$baseUrl/reply-message";
}
